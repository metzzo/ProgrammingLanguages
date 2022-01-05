
; --------------------------------------------------------------
; MAY BE CHANGED:
; --------------------------------------------------------------
Const GUI_MAXGADGETS% 	= 25	; MAX. GADGETS ALLOWED PER WINDOW
Const GUI_TITLEDRAGONLY%= False	; TRUE = WINDOWS CAN BE DRAGGED BY CLICKING TITLE BAR ONLY (NOTE: DIFFICULT WITH WINDOWS THAT DO NOT HAVE A TITLEBAR THEN)
Const GUI_BLOCKYBAR%	= True  ; TRUE = INCREASE PROGRESSBARS BLOCK-WISE, FALSE = DRAW BARS EXACTLY (SMOOTH)
Const GUI_SLIDEDRAG%	= True  ; TRUE = WINDOWS WILL SLIDE OUT WHEN DRAGGED.

; NOTE: THE WINDOW FADE-IN EFFECT CAN BE CHANGED. SCROLL TO FUNCTION
;       GUI_CreateWindow AND NOTICE THE LINES AT THE END OF THIS FUNCTION.
;       REPLACE THEM WITH ANY OTHER SPRITE CANDY EFFECT OR DELETE THEM.
; --------------------------------------------------------------



; ----------------------------------------

; ----------------------------------------
; PRODUCT :     SPRITE CANDY GUI EXTENSION
; VERSION :     1.0.5
; AUTHOR  :     MIKE DOGAN / X-PRESSIVE.COM
; WEB SITE:     http://www.x-pressive.com/SpriteCandy/
; PUBLISHER:    X-PRESSIVE.COM
; COPYRIGHT:    (c)2006 X-PRESSIVE.COM,
;               Mike Dogan Games & Entertainment
; ----------------------------------------

; ----------------------------------------
; PLEASE NOTE:
; A LOT OF HARD AND HONEST WORK HAS BEEN SPENT
; INTO SPRITE CANDY AND IT'S TOOLS AND WE'RE STILL 
; WORKING HARD TO IMPROVE IT FURTHER.
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

; ----------------------------------------




; WINDOW PROPERTY FLAGS
Const FLAG_DRAGGABLE% = %00000001 ; 1
Const FLAG_CLOSEABLE% = %00000010 ; 2
Const FLAG_NOTITLE%   = %00000100 ; 4
Const FLAG_DIMM%      = %00001000 ; 8
Const FLAG_MODAL%     = %00010000 ; 16

; GADGET TYPES
Const GUI_CLOSEBUTTON%	= 1
Const GUI_BUTTON%	= 2
Const GUI_CHECKBOX%	= 3
Const GUI_RADIOBOX%	= 4
Const GUI_LABEL%	= 5
Const GUI_BEVELFRAME%	= 6
Const GUI_PROGBAR%	= 7
Const GUI_SLIDERH%	= 8
Const GUI_SLIDERV%	= 9
Const GUI_TEXTFIELD%	= 10
Const GUI_IMAGE%	= 11
Const GUI_CHECKBUTTON%  = 12
Const GUI_IMAGEBUTTON%  = 13
Const GUI_COLORPICKER%  = 14

Global GUI_Tex%		; TEXTURE CONTAINING THE GUI ELEMENTS
Global GUI_IconTex%	; TEXTURE STRIP CONTAINING 16x16 ICONS
Global GUI_TexFont1%	; TEXTURE HANDLE OF TITLE  FONT
Global GUI_TexFont2%	; TEXTURE HANDLE OF NORMAL FONT
Global GUI_HUD%		; SPRITE  CANDY HUD HANDLE TO DRAW GUI ON
Global GUI_DragWin%	; WINDOW CURRENTLY BEING DRAGGED
Global GUI_DragGadget%	; GADGET CURRENTLY BEING DRAGGED
Global GUI_TextGadget%	; CURRENTLY ACTIVE TEXT GADGET (BLINKING CURSOR)
Global GUI_ClickedGadget% = -1; GADGET CLICKED
Global GUI_modalWindows%; NUMBER OF CURRENTLY OPEN MODAL WINDOWS. IF ANY (> 0), ALL NORMAL WINDOWS ARE DISABLED.
Global GUI_Img_Palette% ; COLOR PICKER PALETTE

Global GUI_drag_offx%	; DRAG START MOUSE X-COORDINATE
Global GUI_drag_offy%	; DRAG START MOUSE Y-COORDINATE
Global GUI_mouse_lx%	; FOR WINDOW SLIDE EFFECT
Global GUI_mouse_ly%	; FOR WINDOW SLIDE EFFECT
Global GUI_mousehit%	; REMEMBER IF MOUSE HAS BEEN CLICKED
Global GUI_mousedown%	
Global GUI_mouseup%
Global GUI_shadows%	; WINDOW SHADOWS OFFSET (0 = NO SHADOWS)
Global GUI_volume# = 1.0; GUI SOUND FX VOLUME
Global GUI_lastKeyHit%  ; USED FOR KEY TYPING

; SOUNDS
Global GUISND_ButtonD%	; BUTTON DOWN SOUND
Global GUISND_ButtonU%	; BUTTON UP   SOUND
Global GUISND_Slider%	; SLIDER    SOUND
Global GUISND_Check%	; CHECKBOX  SOUND
Global GUISND_Radio%	; RADIOBOX  SOUND
Global GUISND_Type%	; TEXT TYPE SOUND
Global GUISND_Modal%	; MODAL SOUND

Dim GUICORNER_TL%   (3)
Dim GUICORNER_TLS%  (3)
Dim GUICORNER_TR%   (3)
Dim GUICORNER_TRS%  (3)
Dim GUICORNER_BL%   (3)
Dim GUICORNER_BR%   (3)
Dim GUIBORDER_T%    (3)
Dim GUIBORDER_TS%   (3)
Dim GUIBORDER_L%    (3)
Dim GUIBORDER_R%    (3)
Dim GUIBORDER_B%    (3)
Dim GUIBUTTON%      (3)
Dim GUIBUTTON_L%    (3)
Dim GUIBUTTON_R%    (3)
Dim GUICHECKBOX%    (3)
Dim GUIRADIOBOX%    (3)
Dim GUICLOSEBUT%    (5)
Dim GUIPROGRESS_L%  (3)
Dim GUIPROGRESS_R%  (3)
Dim GUIPROGRESS_BG% (3)
Dim GUIPROGRESS_BAR%(3)
Dim GUISLIDERH_L%   (3)
Dim GUISLIDERH_R%   (3)
Dim GUISLIDERH_BG%  (3)
Dim GUISLIDERH%     (3)
Dim GUISLIDERV_T%   (3)
Dim GUISLIDERV_B%   (3)
Dim GUISLIDERV_BG%  (3)
Dim GUISLIDERV%     (3)
Dim GUITEXTFIELD_L% (3)
Dim GUITEXTFIELD_R% (3)
Dim GUITEXTFIELD_BG%(3)
Dim GUI_ICONPOS%    (1)
Dim GUIBG%          (3)
Dim GUI_BEVELCOLORS%      (1,2)
Dim GUI_FONTCOLOR%        (2)
Dim GUI_TEXTFIELDCOLOR%   (2)
Dim GUI_DISABLEDTEXTCOLOR%(2)
Dim GUI_BUTTONTEXTCOLOR%  (2)
Dim GUI_BUTTONTEXTCOLORH% (2)
Dim GUI_BUTTONTEXTCOLORL% (2)
Dim GUI_TITLETEXTCOLOR%   (2)
Global GUITITLETEXT_Y%
Global GUI_TITLETEXTALIGN%   = 0 ; 0 = LEFT | 1 = CENTER | 2 = RIGHT
Global GUI_CLOSEBUTTONRIGHT% = 1

Type TGUI_Font
	Field Img%
	Field tex_w%
	Field tex_h%
	Field num_chars%
	Field line_height%
	Field widths% [255]
	Field heights%[255]
	Field xpos%   [255]
	Field ypos%   [255]
	Field max_width%
End Type

Global GUI_Font1.TGUI_Font = New TGUI_Font
Global GUI_Font2.TGUI_Font = New TGUI_Font

Type TGUI_Gadget
	Field typ%
	Field Win%		; WINDOW OBJECT HANDLE
	Field caption$
	Field caption_wrapped$
	Field disabled%
	Field textalign$	; "LEFT" | "CENTER" | "RIGHT"
	Field border%		; TRUE OR FALSE	
	Field hidden%
	Field interactive%	; TRUE = ENABLE MOUSE CHECKS
	Field pressed%		; TRUE IF GADGET IS HOLD DOWN BY MOUSE
	Field value#		; GADGET'S MAIN VALUE
	Field value2#		; SLIDER: STEPS
	Field value3#		; SLIDER: STEP SIZE
	Field value4#
	Field x% , y%
	Field w% , h%
	Field actualwidth%
	; IMAGES
	Field Res%		; IMAGE RESOURCE HANDLE
	; RADIOBUTTONS
	Field radiogroup$	; RADIOBUTTON GROUP NAME
	; TEXTFIELDS
	Field max_chars%
	Field allowed_chars$
	Field cursorpos%	; CURRENT CURSOR POSITION IN CAPTION STRING ( 1 - LEN$() )
	Field first_char_pos%	; FIRST VISIBLE CHAR OF THE STRING
	Field password%
End Type

Type TGUI_Window
	Field Tex%
	Field Res%
	Field Lyr%
	Field Img%
	Field Gadgets%[GUI_MAXGADGETS]
	Field w%		; TOTAL WIDTH, INCLUDING LEFT & RIGHT BORDERS
	Field h%		; TOTAL HEIGHT, INCLUDING TOP & BOTTOM BORDERS
	Field innerw%		; WIDTH OF INNER WINDOW AREA
	Field innerh%		; HEIGHT OF INNER WINDOW AREA
	Field innerx% 		; X-OFFSET OF WINDOW CONTENT (WIDTH  OF LEFT BORDER)
	Field innery%		; Y-OFFSET OF WINDOW CONTENT (HEIGHT OF TITLE BAR)
	Field icon%
	Field caption$
	Field closeflag%	; TRUE IF USER HAS CLICKED CLOSE BUTTON
	Field draggable%
	Field closeable%
	Field notitlebar%
	Field dimm%		; DIM WINDOW WHEN NOT ACTIVE
	Field redrawAll%	; TRUE = REDRAW COMPLETE WINDOW
	Field redrawTitle%	; TRUE = REDRAW TITLE ONLY
	Field ModalID%		; TYPE HANDLE OF MODAL TYPE, IF THIS WINDOW IS A MODAL DIALOG
End Type

Type TGUI_ModalWins
	Field Win%
	Field caption$
	Field Button1%
	Field Button2%
	Field confirmed$
End Type


; --------------------------------------------------------------
; FUNCTION: INITALIZE GUI
; --------------------------------------------------------------
Function GUI_Create(HUD_ID%, image$, font1$, font2$, icons$, shadowOffset%=0)
	
	FlushKeys : FlushMouse
	
	Local HUDObj.SC_HUD = Object.SC_HUD( HUD_ID ) : If HUDObj = Null Then RuntimeError SC_BreakText("GUI_Create||You specified an invalid HUD ID. Make sure, this HUD exists.",50)
	If GUI_HUD <> 0 Then RuntimeError SC_BreakText("GUI_Create||A GUI already exists. Please remove the existing GUI using GUI_Remove() before initializing a new one.",50)
	
	GUI_HUD     = HUD_ID
	GUI_shadows = shadowOffset
	
	GUI_LoadSkin(image$, font1$, font2$, icons$)
	
	; CREATE COLOR PICKER PALETTE IMAGE --------------------
	Local st%=1,li%,l2%,R%=255,G%,B%,R2%,G2%,B2%,x%,y%
	GUI_Img_Palette = CreateImage(287,130) : If GUI_Img_Palette = 0 RuntimeError SC_BreakText("GUI_Create||Could not create color picker palette image.",50)
		
		LockBuffer ImageBuffer(GUI_Img_Palette)
		For y = 0 To 129 
			For x = 0 To 286 
				Select st                               
					Case 1 If G < 255 Then G = G+5 Else st=st+1
					Case 2 If R > 0   Then R = R-5 Else st=st+1
					Case 3 If B < 255 Then B = B+5 Else st=st+1
					Case 4 If G > 0   Then G = G-5 Else st=st+1 
					Case 5 If R < 255 Then R = R+5 Else st=st+1 
					Case 6 If B > 0   Then B = B-5 Else st=st+1 
				End Select 
				R2 = R : G2 = G : B2 = B : l2=0 
				While l2 < li     
					l2 = l2 + 1   
					If R2 > 127 Then R2 = R2-1 Else If R2 < 127 Then R2 = R2+1
					If G2 > 127 Then G2 = G2-1 Else If G2 < 127 Then G2 = G2+1
					If B2 > 127 Then B2 = B2-1 Else If B2 < 127 Then B2 = B2+1
				Wend
				If R2 < 1 Then R2 = 1
				If G2 < 1 Then G2 = 1
				If B2 < 1 Then B2 = 1
				WritePixelFast x,y,255*$1000000+R2*$10000+G2*$100+B2, ImageBuffer(GUI_Img_Palette)
			Next 
			li = li + 1 : R = 255 : G = 0 : B = 0 : st = 1
		Next 
		UnlockBuffer ImageBuffer(GUI_Img_Palette)
		
End Function


; --------------------------------------------------------------
; FUNCTION: LOAD A SKIN
; --------------------------------------------------------------
Function GUI_LoadSkin(image$, font1$, font2$, icons$)
	
	Local datfile1$ = Left(font1$,Len(font1$)-4) + ".dat"
	Local datfile2$ = Left(font2$,Len(font2$)-4) + ".dat"
	Local cfgfile$  = Left(image$,Len(image$)-4) + ".cfg"
	Local i%,c%, ascii%, File%, a$,b$
	
	; LOAD GRAPHICS
	If GUI_Tex      <> 0 Then FreeTexture GUI_Tex      : GUI_Tex      = 0
	If GUI_IconTex  <> 0 Then FreeTexture GUI_IconTex  : GUI_IconTex  = 0
	If GUI_TexFont1 <> 0 Then FreeTexture GUI_TexFont1 : GUI_TexFont1 = 0
	If GUI_TexFont2 <> 0 Then FreeTexture GUI_TexFont2 : GUI_TexFont2 = 0
	GUI_Tex      = LoadTexture(image$,4) : If GUI_Tex      = 0 Then RuntimeError SC_BreakText("GUI_LoadSkin||Could not load GUI image file:|(" + image$ + ")",50)
	GUI_IconTex  = LoadTexture(icons$,4) : If GUI_IconTex  = 0 Then RuntimeError SC_BreakText("GUI_LoadSkin||Could not load GUI icons:|(" + icons$ + ")",50)
	GUI_TexFont1 = LoadTexture(font1$,4) : If GUI_TexFont1 = 0 Then RuntimeError SC_BreakText("GUI_LoadSkin||Could not load font image file:|(" + font1$ + ")",50)
	GUI_TexFont2 = LoadTexture(font2$,4) : If GUI_TexFont2 = 0 Then RuntimeError SC_BreakText("GUI_LoadSkin||Could not load font image file:|(" + font2$ + ")",50)
	
	; LOAD GUI DEFINITION
	File = ReadFile(cfgfile$) : If File = 0 Then RuntimeError SC_BreakText("GUI_LoadSkin||Could not load GUI config file:|(" + cfgfile$ + ")",50)
	While Not Eof(File)
		
		a$ = Trim(ReadLine(File))
		b$ = Trim(SC_StrExplode$(a$, "=", 0))
		If Left(b$,2) <> "//" Then
			Select b$
				Case "CORNER_TOPLEFT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUICORNER_TL(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUICORNER_TL(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUICORNER_TL(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUICORNER_TL(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "CORNER_TOPRIGHT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUICORNER_TR(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUICORNER_TR(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUICORNER_TR(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUICORNER_TR(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "CORNER_BOTTOMLEFT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUICORNER_BL(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUICORNER_BL(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUICORNER_BL(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUICORNER_BL(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "CORNER_BOTTOMRIGHT"
					a$ = Trim(SC_StrExplode$(a$, "=", 1))
					GUICORNER_BR(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUICORNER_BR(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUICORNER_BR(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUICORNER_BR(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BORDER_TOP"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIBORDER_T(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBORDER_T(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBORDER_T(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBORDER_T(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BORDER_LEFT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIBORDER_L(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBORDER_L(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBORDER_L(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBORDER_L(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BORDER_RIGHT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIBORDER_R(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBORDER_R(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBORDER_R(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBORDER_R(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BORDER_BOTTOM"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIBORDER_B(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBORDER_B(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBORDER_B(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBORDER_B(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BG"
					a$ = Trim(SC_StrExplode$(a$, "=", 1))
					GUIBG(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBG(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBG(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBG(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "CLOSEBUTTON"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUICLOSEBUT(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUICLOSEBUT(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUICLOSEBUT(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUICLOSEBUT(3) = Trim(SC_StrExplode$(a$, ",",3))
					GUICLOSEBUT(4) = Trim(SC_StrExplode$(a$, ",",4))
					GUICLOSEBUT(5) = Trim(SC_StrExplode$(a$, ",",5))
					
				Case "ICONPOSITION"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_ICONPOS(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_ICONPOS(1) = Trim(SC_StrExplode$(a$, ",",1))
					
				Case "TITLETEXT_YOFFSET"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUITITLETEXT_Y = Trim(SC_StrExplode$(a$, ",",0))
					
				Case "TITLETEXT_ALIGNMENT"
					a$ = Upper(Trim(SC_StrExplode$(a$, "=",1)))
					GUI_TITLETEXTALIGN = 0
					If a$ = "CENTER" Then GUI_TITLETEXTALIGN = 1
					If a$ = "RIGHT"  Then GUI_TITLETEXTALIGN = 2
					
				Case "CORNER_TOPLEFT_SMALL"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUICORNER_TLS(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUICORNER_TLS(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUICORNER_TLS(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUICORNER_TLS(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "CORNER_TOPRIGHT_SMALL"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUICORNER_TRS(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUICORNER_TRS(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUICORNER_TRS(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUICORNER_TRS(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BORDER_TOP_SMALL"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIBORDER_TS(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBORDER_TS(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBORDER_TS(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBORDER_TS(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BUTTON"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIBUTTON(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBUTTON(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBUTTON(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBUTTON(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BUTTON_LEFTCAP"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIBUTTON_L(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBUTTON_L(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBUTTON_L(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBUTTON_L(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BUTTON_RIGHTCAP"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIBUTTON_R(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIBUTTON_R(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIBUTTON_R(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIBUTTON_R(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "CHECKBOX"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUICHECKBOX(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUICHECKBOX(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUICHECKBOX(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUICHECKBOX(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "RADIOBOX"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIRADIOBOX(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIRADIOBOX(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIRADIOBOX(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIRADIOBOX(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "PROGRESSBAR"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIPROGRESS_BAR(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIPROGRESS_BAR(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIPROGRESS_BAR(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIPROGRESS_BAR(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "PROGRESSBAR_LEFT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIPROGRESS_L(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIPROGRESS_L(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIPROGRESS_L(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIPROGRESS_L(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "PROGRESSBAR_RIGHT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIPROGRESS_R(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIPROGRESS_R(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIPROGRESS_R(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIPROGRESS_R(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "PROGRESSBAR_BG"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUIPROGRESS_BG(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUIPROGRESS_BG(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUIPROGRESS_BG(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUIPROGRESS_BG(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "SLIDERBAR_H_LEFT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUISLIDERH_L(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUISLIDERH_L(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUISLIDERH_L(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUISLIDERH_L(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "SLIDERBAR_H_RIGHT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUISLIDERH_R(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUISLIDERH_R(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUISLIDERH_R(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUISLIDERH_R(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "SLIDERBAR_H_BG"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUISLIDERH_BG(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUISLIDERH_BG(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUISLIDERH_BG(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUISLIDERH_BG(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "SLIDER_H"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUISLIDERH(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUISLIDERH(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUISLIDERH(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUISLIDERH(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "SLIDERBAR_V_TOP"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUISLIDERV_T(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUISLIDERV_T(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUISLIDERV_T(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUISLIDERV_T(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "SLIDERBAR_V_BOTTOM"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUISLIDERV_B(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUISLIDERV_B(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUISLIDERV_B(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUISLIDERV_B(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "SLIDERBAR_V_BG"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUISLIDERV_BG(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUISLIDERV_BG(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUISLIDERV_BG(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUISLIDERV_BG(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "SLIDER_V"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUISLIDERV(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUISLIDERV(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUISLIDERV(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUISLIDERV(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "TEXTFIELD_LEFT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUITEXTFIELD_L(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUITEXTFIELD_L(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUITEXTFIELD_L(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUITEXTFIELD_L(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "TEXTFIELD_RIGHT"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUITEXTFIELD_R(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUITEXTFIELD_R(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUITEXTFIELD_R(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUITEXTFIELD_R(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "TEXTFIELD_BG"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUITEXTFIELD_BG(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUITEXTFIELD_BG(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUITEXTFIELD_BG(2) = Trim(SC_StrExplode$(a$, ",",2))
					GUITEXTFIELD_BG(3) = Trim(SC_StrExplode$(a$, ",",3))
					
				Case "BEVELCOLOR_HIGH"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_BEVELCOLORS(0,0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_BEVELCOLORS(0,1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_BEVELCOLORS(0,2) = Trim(SC_StrExplode$(a$, ",",2))
					
				Case "BEVELCOLOR_LOW"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_BEVELCOLORS(1,0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_BEVELCOLORS(1,1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_BEVELCOLORS(1,2) = Trim(SC_StrExplode$(a$, ",",2))
					
				Case "BUTTONTEXTCOLOR"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_BUTTONTEXTCOLOR(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_BUTTONTEXTCOLOR(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_BUTTONTEXTCOLOR(2) = Trim(SC_StrExplode$(a$, ",",2))
					
				Case "BUTTONTEXTCOLOR_HIGH"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_BUTTONTEXTCOLORH(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_BUTTONTEXTCOLORH(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_BUTTONTEXTCOLORH(2) = Trim(SC_StrExplode$(a$, ",",2))
					
				Case "BUTTONTEXTCOLOR_LOW"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_BUTTONTEXTCOLORL(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_BUTTONTEXTCOLORL(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_BUTTONTEXTCOLORL(2) = Trim(SC_StrExplode$(a$, ",",2))
					
				Case "TITLETEXT_COLOR"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_TITLETEXTCOLOR(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_TITLETEXTCOLOR(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_TITLETEXTCOLOR(2) = Trim(SC_StrExplode$(a$, ",",2))
					
				Case "FONTCOLOR"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_FONTCOLOR(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_FONTCOLOR(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_FONTCOLOR(2) = Trim(SC_StrExplode$(a$, ",",2))
					
					
				Case "TEXTFIELDCOLOR"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_TEXTFIELDCOLOR(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_TEXTFIELDCOLOR(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_TEXTFIELDCOLOR(2) = Trim(SC_StrExplode$(a$, ",",2))
					
				Case "DISABLEDTEXTCOLOR"
					a$ = Trim(SC_StrExplode$(a$, "=",1))
					GUI_DISABLEDTEXTCOLOR(0) = Trim(SC_StrExplode$(a$, ",",0))
					GUI_DISABLEDTEXTCOLOR(1) = Trim(SC_StrExplode$(a$, ",",1))
					GUI_DISABLEDTEXTCOLOR(2) = Trim(SC_StrExplode$(a$, ",",2))
					
				Case "SOUND_BUTTON_DOWN"
					a$ = CurrentDir() + Trim(SC_StrExplode$(a$, "=",1))
					GUISND_ButtonD = LoadSound(a$)
					
				Case "SOUND_BUTTON_UP"
					a$ = CurrentDir() + Trim(SC_StrExplode$(a$, "=",1))
					GUISND_ButtonU = LoadSound(a$)
					
				Case "SOUND_SLIDER"
					a$ = CurrentDir() + Trim(SC_StrExplode$(a$, "=",1))
					GUISND_Slider = LoadSound(a$)
					
				Case "SOUND_CHECKBOX"
					a$ = CurrentDir() + Trim(SC_StrExplode$(a$, "=",1))
					GUISND_Check = LoadSound(a$)
					
				Case "SOUND_RADIOBOX"
					a$ = CurrentDir() + Trim(SC_StrExplode$(a$, "=",1))
					GUISND_Radio = LoadSound(a$)
					
				Case "SOUND_TYPE"
					a$ = CurrentDir() + Trim(SC_StrExplode$(a$, "=",1))
					GUISND_Type = LoadSound(a$)
					
				Case "SOUND_MODAL"
					a$ = CurrentDir() + Trim(SC_StrExplode$(a$, "=",1))
					GUISND_Modal = LoadSound(a$)
					
				Case "CLOSEBUTTON_ALIGNMENT"
					a$ = Upper(Trim(SC_StrExplode$(a$, "=",1)))
					If a$ = "RIGHT" Then GUI_CLOSEBUTTONRIGHT = 1 Else GUI_CLOSEBUTTONRIGHT = 0
					
				Default If b$ <> "" Then RuntimeError "UNRECOGNIZED COMMAND IN " + cfgfile$ + ": " + Chr(13) + b$
			End Select
		End If ; IS NO COMMENT
	Wend
	CloseFile File 
	
	; READ TITLE FONT METRICS ------------------------------
	
	File = ReadFile(datfile1$) : If File = 0 Then RuntimeError SC_BreakText("GUI_LoadSkin||Could not load font data file:|(" + datfile1$ + ")",50)
	GUI_Font1\tex_w		= ReadInt (File)
	GUI_Font1\tex_h		= ReadInt (File)
	c = ReadInt(File)
	c = ReadInt(File)
	c = ReadInt(File)
	GUI_Font1\num_chars	= ReadInt (File)
	GUI_Font1\line_height	= ReadInt (File) 
	GUI_Font1\widths [32]	= ReadInt (File)    	; SPACE CHAR
	GUI_Font1\heights[32]	= GUI_Font1\line_height	; SPACE CHAR
	GUI_Font1\max_width	= ReadInt (File)
	
	For i = 1 To GUI_Font1\num_chars
		ascii = ReadInt (File)
		GUI_Font1\xpos    [ascii] = ReadInt (File)
		GUI_Font1\ypos    [ascii] = ReadInt (File)
		GUI_Font1\widths  [ascii] = ReadInt (File)
		GUI_Font1\heights [ascii] = GUI_Font1\line_height
	Next
	CloseFile File
	
	; READ NORMAL FONT METRICS -----------------------------
	
	File = ReadFile(datfile2$) : If File = 0 Then RuntimeError SC_BreakText("GUI_LoadSkin||Could not load font data file:|(" + datfile2$ + ")",50)
	GUI_Font2\tex_w		= ReadInt (File)
	GUI_Font2\tex_h		= ReadInt (File)
	ReadInt(File)
	ReadInt(File)
	ReadInt(File)
	GUI_Font2\num_chars	= ReadInt (File)
	GUI_Font2\line_height	= ReadInt (File) 
	GUI_Font2\widths [32]	= ReadInt (File)    	; SPACE CHAR
	GUI_Font2\heights[32]	= GUI_Font2\line_height	; SPACE CHAR
	GUI_Font2\max_width	= ReadInt (File)
	
	For i = 1 To GUI_Font2\num_chars
		ascii = ReadInt (File)
		GUI_Font2\xpos    [ascii] = ReadInt (File)
		GUI_Font2\ypos    [ascii] = ReadInt (File)
		GUI_Font2\widths  [ascii] = ReadInt (File)
		GUI_Font2\heights [ascii] = GUI_Font2\line_height
	Next
	CloseFile File
	
	; REDRAW ANY OPEN WINDOWS? ; ---------------------------
	Local Win.TGUI_Window, Gadget.TGUI_Gadget
	Local x%, y%, w%, h%, tex_w%, tex_h%
	For Win = Each TGUI_Window
		
		; REDRAW COMPLETELY
		Win\redrawAll = True
		
		; NEW WINDOW MEASURES
		Win\innerx	   = GUIBORDER_L(2)
		Win\w		   = Win\innerw + GUIBORDER_L(2) + GUIBORDER_R(2)
		If Win\notitlebar  = True Then
			Win\innery = GUIBORDER_TS(3)
			Win\h      = Win\innerh + GUIBORDER_TS(3) + GUIBORDER_B(3)
		Else
			Win\innery = GUIBORDER_T(3)
			Win\h	   = Win\innerh + GUIBORDER_T(3) + GUIBORDER_B(3)
		End If
		
		; CREATE NEW WINDOW TEXTURE
		HUD_FreeImageResources Win\Res
		tex_w   = 2 Shl (Len(Int(Bin( ( (Win\w+2) ) -1)))-1)
		tex_h   = 2 Shl (Len(Int(Bin( ( (Win\h+2) ) -1)))-1)
		Win\Tex = CreateTexture (tex_w,tex_h,4)
		Win\Res = HUD_LoadMemoryResource (Win\Tex,4)
		HUD_SetLayerTexture Win\Lyr, Win\Res
		HUD_ChangeImageSize Win\Img, Win\w, Win\h
		HUD_SetImageClip    Win\Img, 1,1
		
		; ADJUST GADGETS
		For i = 0 To GUI_MAXGADGETS
			
			Gadget = Object.TGUI_Gadget(Win\Gadgets[i])
			
			If Gadget <> Null Then
				; GADGETS WITH AUTOMATIC WIDTH OR HEIGHT
				Select Gadget\typ
					Case GUI_CLOSEBUTTON
						If GUI_CLOSEBUTTONRIGHT  = 1 Then Gadget\x = Win\w-GUICLOSEBUT(2)-GUICLOSEBUT(4)
						If GUI_CLOSEBUTTONRIGHT  = 0 Then Gadget\x = GUICLOSEBUT(4)
						Gadget\y	  = GUICLOSEBUT(5)
						Gadget\w	  = GUICLOSEBUT(2)
						Gadget\actualwidth= GUICLOSEBUT(2)
						Gadget\h	  = GUICLOSEBUT(3)
						
					Case GUI_BUTTON      Gadget\h = GUIBUTTON(3)
					Case GUI_IMAGEBUTTON Gadget\h = GUIBUTTON(3)
					Case GUI_CHECKBOX    Gadget\h = GUICHECKBOX(3)
					Case GUI_RADIOBOX    Gadget\h = GUIRADIOBOX(3)
					Case GUI_PROGBAR     Gadget\h = GUIPROGRESS_BG(3)
					Case GUI_SLIDERH     Gadget\h = GUISLIDERH(3)
					Case GUI_SLIDERV     Gadget\w = GUISLIDERV(2)
					Case GUI_TEXTFIELD   Gadget\h = GUITEXTFIELD_BG(3)
				End Select
				
				; WRAP TEXTS AGAIN
				Gadget\caption_wrapped$	= SC_WrapGUIText$(Gadget\caption$, Gadget\w)
			End If
		Next
	Next
	
End Function


; --------------------------------------------------------------
; FUNCTION: CREATE A WINDOW
; --------------------------------------------------------------
Function GUI_CreateWindow%(caption$, x%, y%, innerw%, innerh%, flags%, xAlign$="", yAlign$="", icon%=0)
	
	Local w%, h%
	
	w = innerw + GUIBORDER_L(2) + GUIBORDER_R(2)
	If (flags And FLAG_NOTITLE) > 0 Then
		h = innerh + GUIBORDER_TS(3) + GUIBORDER_B(3)
	Else
		h = innerh + GUIBORDER_T(3) + GUIBORDER_B(3)
	End If
	
	; WINDOW MIN / MAX SIZE
	;Local min_h% = GUICORNER_TL(3) + GUICORNER_BL(3) + 50
	;Local min_w% = GUICORNER_TL(2) + GUICORNER_BL(2) + 100
	Local max_h% = 1024 - min_h
	Local max_w% = 1024 - min_w
	If w < min_w Then w = min_w
	If h < min_h Then h = min_h
	If w > max_w Then w = max_w
	If h > max_h Then h = max_h
	
	; FIND TEXTURE WIDTH / HEIGHT
	Local tex_w% = 2 Shl (Len(Int(Bin( ( (w+2)  ) -1)))-1)
	Local tex_h% = 2 Shl (Len(Int(Bin( ( (h+2)  ) -1)))-1)
	
	; NEW WINDOW -------------------------------------------
	Local Win.TGUI_Window 	= New TGUI_Window
	Win\Tex			= CreateTexture(tex_w,tex_h,4+16+32)
	Win\Res 		= HUD_LoadMemoryResource (Win\Tex,4+16+32)
	Win\Lyr			= HUD_CreateLayer        (GUI_HUD, Win\Res)
	Win\Img			= HUD_CreateImage        (Win\Lyr, x,y, 1,1, w%, h%, xAlign$, yAlign$)
	Win\w			= w
	Win\h			= h
	Win\innerw		= innerw
	Win\innerh		= innerh
	Win\innerx		= GUIBORDER_L(2)
	Win\innery		= GUIBORDER_T(3) 
	Win\icon		= icon : If GUI_CLOSEBUTTONRIGHT = 0 Then Win\icon = -1
	Win\caption$		= caption$
	If (flags And FLAG_DRAGGABLE) > 0 Then Win\draggable  	= True
	If (flags And FLAG_CLOSEABLE) > 0 Then Win\closeable 	= True
	If (flags And FLAG_NOTITLE)   > 0 Then Win\notitlebar 	= True : Win\closeable = False : Win\innery = GUIBORDER_TS(3)
	If (flags And FLAG_DIMM)      > 0 Then Win\dimm  	= True 
	If (flags And FLAG_MODAL)     > 0 Then Win\ModalID 	= True : GUI_modalWindows = GUI_modalWindows + 1
	
	; CLOSE BUTTON GADGET? ---------------------------------
	If Win\closeable = True Then
		Local Gadget.TGUI_Gadget = New TGUI_Gadget
		If GUI_CLOSEBUTTONRIGHT  = 1 Then Gadget\x = Win\w-GUICLOSEBUT(2)-GUICLOSEBUT(4)
		If GUI_CLOSEBUTTONRIGHT  = 0 Then Gadget\x = GUICLOSEBUT(4)
		Gadget\typ	  = GUI_CLOSEBUTTON
		Gadget\y	  = GUICLOSEBUT(5)
		Gadget\w	  = GUICLOSEBUT(2)
		Gadget\actualwidth= Gadget\w
		Gadget\h	  = GUICLOSEBUT(3)
		Gadget\interactive= True
		Gadget\Win        = Handle(Win)
		Win\Gadgets[0]	  = Handle(Gadget)
	End If
	
	; DRAW WINDOW
	Win\redrawAll  = True
	
	; SORT WINDOWS BY ZORDER
	SC_SortWindows
	
	; WINDOW SHADOW?
	If GUI_shadows > 0 Then HUD_SetObjectShadow Win\Img, True, GUI_shadows
	
	; -------------------------------------------
	
	; WINDOW POP-IN EFFECT (ADJUST TO YOUR NEED)
	HUD_SetObjectScale Win\Img,.1,.1
	HUD_FX_Scale       Win\Img, 1,1,500,5,5,0
	;HUD_SetObjectAlpha Win\Img, 0
	;HUD_FX_AlphaFade   Win\Img, 1,750
	; -------------------------------------------
	
	Return Win\Img
	
End Function


; --------------------------------------------------------------
; FUNCTION: CHECK IF WINDOW OR GADGET EXISTS
; --------------------------------------------------------------
Function GUI_WindowExists(WinID%)
	Local Win.TGUI_Window = SC_GetWindowObject(WinID)
	If Win = Null Then Return False Else Return True 
End Function


Function GUI_GadgetExists(GadgetID%)
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)
	If Gadget = Null Then Return False Else Return True 
End Function


; --------------------------------------------------------------
; FUNCTION: SET WINDOW CAPTION
; --------------------------------------------------------------
Function GUI_SetWindowTitle(WinID%, icon%, txt$="")
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_SetWindowTitle||The specified window does not exist.",50) 
	Win\icon = icon
	If txt$ <> "" Then Win\caption$ = txt$
	If Win\notitlebar = False Win\redrawTitle = True
End Function


Function GUI_GetWindowTitle$(WinID%)
	Local  Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_GetWindowTitle||The specified window does not exist.",50) 
	Return Win\caption$
End Function


; --------------------------------------------------------------
; FUNCTION: BRING A WINDOW TO FRONT
; --------------------------------------------------------------
Function GUI_WindowToFront(WinID%)
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_WindowToFront||The specified window does not exist.",50) 
	HUD_LayerToFront Win\Lyr
	SC_SortWindows
End Function


; --------------------------------------------------------------
; FUNCTION: COUNT EXISTING WINDOWS
; --------------------------------------------------------------
Function GUI_CountWindows%()
	Local Win.TGUI_Window, c%
	For   Win = Each TGUI_Window : c = c + 1 : Next : Return c
End Function


; --------------------------------------------------------------
; FUNCTION: RETURN A WINDOW'S TEXTURE SIZE
; --------------------------------------------------------------
Function GUI_GetWindowTexSize%(WinID%, getHeight%=0)
	Local  Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_GetWindowTexSize||The specified window does not exist.",50) 
	If getHeight = 0 Return TextureWidth (Win\tex)
		If getHeight = 1 Return TextureHeight(Win\tex)
End Function


; --------------------------------------------------------------
; FUNCTION: RETURN A WINDOW'S SIZE
; --------------------------------------------------------------
Function GUI_GetWindowSize%(WinID%, getHeight%=0)
	Local  Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_GetWindowSize||The specified window does not exist.",50) 
	If getHeight = 0 Return Win\w
		If getHeight = 1 Return Win\h
End Function


; --------------------------------------------------------------
; FUNCTION: RETURN A WINDOW'S TEXTURE BUFFER
; --------------------------------------------------------------
Function GUI_GetWindowBuffer%(WinID%)
	Local  Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_GetWindowBuffer||The specified window does not exist.",50) 
	Return TextureBuffer(Win\Tex)
End Function


; --------------------------------------------------------------
; FUNCTION: RETURNS THE TOPMOST WINDOW
; --------------------------------------------------------------
Function GUI_GetTopWindow%()
	SC_SortWindows
	Local  Win.TGUI_Window = First TGUI_Window
	If Win <> Null Then Return Win\Img Else Return 0
End Function


; --------------------------------------------------------------
; FUNCTION: CHECK IF A WINDOWS CLOSE BUTTON HAS BEEN USED
;     NOTE: CALL THIS ONCE PER FRAME (FUNTION WILL RESET
;           THE WINDOW'S CLOSE FLAG)
; --------------------------------------------------------------
Function GUI_GetClosedWindow%()
	Local Win.TGUI_Window
	For   Win = Each TGUI_Window
		If Win\closeflag = True Then Win\closeflag = False : Return Win\Img
		
	Next
	Return 0
End Function


; --------------------------------------------------------------
; FUNCTION: CHECK IF A GADGET HAS BEEN CLICKED
;     NOTE: CALL THIS ONCE PER FRAME (FUNTION WILL RESET THE FLAG)
; --------------------------------------------------------------
Function GUI_GetClickedGadget%()
	Local i% = GUI_ClickedGadget : GUI_ClickedGadget = -1 : Return i
End Function


; --------------------------------------------------------------
; FUNCTION: GET HANDLE OF FOCUSSED TEXTFIELD (OR FALSE, IF NONE)
; --------------------------------------------------------------
Function GUI_GetActiveTextfield%()
	
	Local Gadget.TGUI_Gadget
	
	If GUI_TextGadget <> 0 Then
		Gadget  = Object.TGUI_Gadget(GUI_TextGadget)
		If Gadget  = Null Return False
			If Gadget <> Null Return Handle(Gadget)
			End If
			Return False
			
End Function


; --------------------------------------------------------------
; FUNCTION: CHECK IF MOUSE IS OVER ANY GUI WINDOW
; --------------------------------------------------------------
Function GUI_MouseOverWindow%(WinID%=0)
	
	Local Win.TGUI_Window, x%,y%
	
	; CERTAIN WINDOW?
	If WinID <> 0 Then
		Win = SC_GetWindowObject(WinID) : If Win = Null Then Return False 
		; INSIDE WINDOW?
		x = GUI_GetMouseX(Win\Img,False)
		y = GUI_GetMouseY(Win\Img,False)
		If SC_PointInRect(x,y, 0,0,Win\w,Win\h) And HUD_GetObjectVisibility(Win\Img) Then Return True
		Return False
	End If
	
	; ACTIVE GADGETS? RETURN TRUE
	If GUI_DragWin    <> 0 Return True
		If GUI_DragGadget <> 0 Return True
			If GUI_TextGadget <> 0 Return True
				
				For Win = Each TGUI_Window
		; INSIDE WINDOW?
					x = GUI_GetMouseX(Win\Img,False)
					y = GUI_GetMouseY(Win\Img,False)
					If SC_PointInRect(x,y, 0,0,Win\w,Win\h) And HUD_GetObjectVisibility(Win\Img) Then Return True
				Next
				Return False
				
End Function

; --------------------------------------------------------------
; FUNCTION: CHECK IF A WINDOW IS CURRENTLY BEEN DRAGGED
; --------------------------------------------------------------
Function GUI_GetDraggedWindow%()
	Return GUI_DragWin
End Function


; --------------------------------------------------------------
; FUNCTION: RETURN MOUSE COORDS WITHIN A WINDOW
;     NOTE: WINDOW IMAGE MAY BE ROTATED OR SCALED, BUT WINDOW'S
;           LAYER OR HUD MUST *NOT* BE MOVED, ROTATED OR SCALED!
; --------------------------------------------------------------
Function GUI_GetMouseX%(WinID%, inner%=True)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_GetMouseX||The specified window does not exist.",50) 
	Local Obj.SC_Object   = Object.SC_Object  (Win\Img)
	
	Local mx% = MouseX(), my% = MouseY(), offx% = inner*Win\innerx
	
	; NOT ROTATED
	If Int(Obj\rotation) = 0 Then Return (mx - Obj\x) / Obj\scaleX + (Obj\width  / 2) + (Obj\originx * (Obj\width  / 2))-offx
	; IS ROTATED
	Local nx%
	Local a# = Abs(360.0-Obj\rotation)
	nx = Obj\x + (mx-Obj\x) * SC_Cos(a) - (my-Obj\y) * SC_Sin(a) 
	nx = (nx - Obj\x)/Obj\scaleX + (Obj\width  / 2) + (Obj\originx * (Obj\width  / 2))
	Return nx - offx
	
End Function


Function GUI_GetMouseY%(WinID%, inner%=True)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_GetMouseY||The specified window does not exist.",50) 
	Local Obj.SC_Object   = Object.SC_Object  (Win\Img)
	
	Local mx% = MouseX(), my% = MouseY(), offy% = inner*Win\innery
	
	; NOT ROTATED
	If Int(Obj\rotation) = 0 Then Return (my - Obj\y) / Obj\scaleY + (Obj\height / 2) + (Obj\originy * (Obj\height / 2))-offy
	; IS ROTATED
	Local ny%
	Local a# = Abs(360.0-Obj\rotation)
	ny = Obj\y + (mx-Obj\x) * SC_Sin(a) + (my-Obj\y) * SC_Cos(a) 
	ny = (ny - Obj\y)/Obj\scaleY + (Obj\height / 2) + (Obj\originy * (Obj\height / 2))
	Return ny - offy
	
End Function


; --------------------------------------------------------------
; FUNCTION: DELETE A WINDOW
; --------------------------------------------------------------
Function GUI_RemoveWindow(WinID%)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_RemoveWindow||The specified window does not exist.",50) 
	
	; WINDOW CURRENTLY DRAGGING?
	If Handle(Win) = GUI_DragWin Then GUI_DragWin = 0
	
	; WAS MODAL WINDOW?
	If Win\ModalID Then GUI_modalWindows = GUI_modalWindows - 1
	
	; DELETE GADGETS
	Local Gadget.TGUI_Gadget, i%
	For i = 0 To GUI_MAXGADGETS
		Gadget = Object.TGUI_Gadget(Win\Gadgets[i])
		If Gadget <> Null Then
			; DRAGGING THIS GADGET?
			If Handle(Gadget) = GUI_DragGadget Then GUI_DragGadget = 0
			; ACTIVE TEXT GADGET?
			If Handle(Gadget) = GUI_TextGadget Then GUI_TextGadget = 0
			Delete Gadget
		End If
	Next
	HUD_RemoveObject        Win\Img
	HUD_RemoveLayer         Win\Lyr
	HUD_FreeImageResources  Win\Res
	Delete Win
	
	SC_SortWindows ; TO HIGHLIGHT NEXT WINDOW
	
	
End Function


; --------------------------------------------------------------
; FUNCTION: CLEAR GUI (REMOVE ALL WINDOWS)
; --------------------------------------------------------------
Function GUI_Clear()
	
	GUI_mousehit      = False
	GUI_mousedown     = False
	GUI_mouseup	  = False
	GUI_DragWin       = False
	GUI_DragGadget    = False
	GUI_TextGadget    = False
	GUI_ClickedGadget = -1
	Delete Each TGUI_ModalWins
	Local Win.TGUI_Window
	For Win = Each TGUI_Window : GUI_RemoveWindow Win\Img : Next
	
End Function


; --------------------------------------------------------------
; FUNCTION: DELETE COMPLETE GUI AND RESET ALL
; --------------------------------------------------------------
Function GUI_Remove()
	
	GUI_Clear
	If HUD_ObjectExists (GUI_HUD) HUD_Remove GUI_HUD
		FreeTexture GUI_Tex
		FreeTexture GUI_IconTex
		FreeTexture GUI_TexFont1
		FreeTexture GUI_TexFont2
		GUI_Tex      = 0
		GUI_IconTex  = 0
		GUI_TexFont1 = 0
		GUI_TexFont2 = 0
		GUI_modalWindows = 0
		If GUISND_ButtonD <> 0 FreeSound GUISND_ButtonD
			If GUISND_ButtonU <> 0 FreeSound GUISND_ButtonU
				If GUISND_Slider  <> 0 FreeSound GUISND_Slider
					If GUISND_Check   <> 0 FreeSound GUISND_Check
						If GUISND_Radio   <> 0 FreeSound GUISND_Radio
							If GUISND_Type    <> 0 FreeSound GUISND_Type
								If GUISND_Modal   <> 0 FreeSound GUISND_Modal
									FreeImage GUI_Img_Palette
									GUI_HUD  = 0
									
End Function


; --------------------------------------------------------------
; FUNCTION: REMOVE A GADGET
; --------------------------------------------------------------
Function GUI_RemoveGadget(GadgetID%)
	
	Local  i%
		Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_RemoveGadget||The specified gadget does not exist.",50) 
	Local  Win.TGUI_Window    = Object.TGUI_Window(Gadget\Win): If Win    = Null Then RuntimeError SC_BreakText("GUI_RemoveGadget||The specified window does not exist.",50) 
	
	; DRAGGING THIS GADGET?
	If Handle(Gadget) = GUI_DragGadget Then GUI_DragGadget = 0
	; ACTIVE TEXT GADGET?
	If Handle(Gadget) = GUI_TextGadget Then GUI_TextGadget = 0
	; COLORPICKER? DELETE PALETTE IMAGE!
	If Gadget\typ = GUI_COLORPICKER Then FreeImage Gadget\Res
	
	For i = 0 To GUI_MAXGADGETS
		If Win\Gadgets[i] = Handle(Gadget) Then Win\Gadgets[i] = 0
	Next
	Delete Gadget
	
	Win\redrawAll = True
	
End Function


; --------------------------------------------------------------
; FUNCTION: REMOVE ALL GADGETS OF A WINDOW
; --------------------------------------------------------------
Function GUI_ClearWindow(WinID%)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_ClearWindow||The specified window does not exist.",50) 
	Local i%, Gadget.TGUI_Gadget
	
	For i = 0 To GUI_MAXGADGETS
		Gadget = Object.TGUI_Gadget(Win\Gadgets[i])
		
		If Gadget <> Null Then
			If Gadget\typ <> GUI_CLOSEBUTTON Then GUI_RemoveGadget Handle(Gadget)
		End If
	Next
	
End Function


; --------------------------------------------------------------
; FUNCTION: SET GUI SOUND VOLUME
; --------------------------------------------------------------
Function GUI_SetVolume(v#)
	GUI_volume = v
End Function


; --------------------------------------------------------------
; FUNCTION: SET A GADGET'S TEXT
; --------------------------------------------------------------
Function GUI_SetGadgetText(GadgetID%, txt$, align$="LEFT")
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_SetGadgetText||The specified gadget does not exist.",50) 
	Local  Win.TGUI_Window    = Object.TGUI_Window(Gadget\Win): If Win    = Null Then RuntimeError SC_BreakText("GUI_SetGadgetText||The specified window does not exist.",50) 
	
	; NO CHANGE? RETURN!
	
	If txt$ = Gadget\caption$ And align$ = Gadget\textalign$ Then Return
	
	Gadget\caption$         = txt$
	Gadget\caption_wrapped$ = SC_WrapGUIText$(txt$, Gadget\w)
	Gadget\textalign$ 	= align$
	Gadget\cursorpos	= 1
	
	; REDRAW GADGET ONLY
	
	SC_DrawGadget Gadget, True
End Function


; --------------------------------------------------------------
; FUNCTION: RETURN A GADGET'S TEXT
; --------------------------------------------------------------
Function GUI_GetGadgetText$(GadgetID%, getWrapped%=False)
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_GetGadgetText||The specified gadget does not exist.",50) 
	If getWrapped = True Return Gadget\caption_wrapped$ Else Return Gadget\caption$
End Function


; --------------------------------------------------------------
; FUNCTION: SET A GADGET'S VALUE
; --------------------------------------------------------------
Function GUI_SetGadgetValue(GadgetID%, value#)
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_SetGadgetValue||The specified gadget does not exist.",50) 
	Local  Win.TGUI_Window    = Object.TGUI_Window(Gadget\Win): If Win    = Null Then RuntimeError SC_BreakText("GUI_SetGadgetValue||The specified window does not exist.",50) 
	
	; VERIFY
	Select Gadget\typ
		Case GUI_COLORPICKER Return
		Case GUI_CHECKBOX    If value <> 0.0 Then value = True
		Case GUI_RADIOBOX    If value <> 0.0 Then value = True
		Case GUI_PROGBAR     If value <  0.0 Then value = 0 Else If value > 1.0 Then value = 1.0
		Case GUI_SLIDERH     value = Int(value) : If value <  0 Then value = 0 Else If value > Gadget\value2 Then value = Gadget\value2
		Case GUI_SLIDERV     value = Int(value) : If value <  0 Then value = 0 Else If value > Gadget\value2 Then value = Gadget\value2
	End Select
	
	If value = Gadget\value Then Return Else Gadget\value = value
	
	; RADIOBOX? UNCHECK OTHERS
	If Gadget\typ = GUI_RADIOBOX And value = True Then SC_UncheckRadioGroup Gadget
	
	; REDRAW GADGET ONLY
	SC_DrawGadget Gadget
End Function

; --------------------------------------------------------------
; FUNCTION: RETURN A GADGET'S VALUE
; --------------------------------------------------------------
Function GUI_GetGadgetValue#(GadgetID%)
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_GetGadgetValue||The specified gadget does not exist.",50) 
	Return Gadget\value
End Function


; --------------------------------------------------------------
; FUNCTION: RETURN A GADGET'S WIDTH OR HEIGHT
; --------------------------------------------------------------
Function GUI_GetGadgetSize%(GadgetID%, what%)
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_GetGadgetSize||The specified gadget does not exist.",50) 
	If what = 0 Then Return Gadget\w
	If what = 1 Then Return Gadget\actualwidth
	If what = 2 Then Return Gadget\h
End Function


; --------------------------------------------------------------
; FUNCTION: RETURN GADGET'S X/Y-POSITION
; --------------------------------------------------------------
Function GUI_GetGadgetPos%(GadgetID%, getY%=0)
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_GetGadgetPos||The specified gadget does not exist.",50) 
	Local  Win.TGUI_Window    = Object.TGUI_Window(Gadget\Win): If Win    = Null Then RuntimeError SC_BreakText("GUI_GetGadgetPos||The specified window does not exist.",50) 
	If getY = 0 Then Return Gadget\x Else Return Gadget\y
End Function


; --------------------------------------------------------------
; FUNCTION: SET GADGET SHAPE
; --------------------------------------------------------------
Function GUI_SetGadgetShape%(GadgetID%, x%,y%,w%,h%)
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_SetGadgetShape||The specified gadget does not exist.",50) 
	Local  Win.TGUI_Window    = Object.TGUI_Window(Gadget\Win): If Win    = Null Then RuntimeError SC_BreakText("GUI_SetGadgetShape||The specified window does not exist.",50) 
	
	; AUTOMATIC WIDTH / HEIGHT?
	Select Gadget\typ
		Case GUI_BUTTON      h = GUIBUTTON  (3)
		Case GUI_IMAGEBUTTON h = GUIBUTTON  (3)
		Case GUI_CHECKBOX    h = GUICHECKBOX(3)
		Case GUI_RADIOBOX    h = GUIRADIOBOX(3)
		Case GUI_PROGBAR     h = GUIPROGRESS_BG(3)
		Case GUI_SLIDERH     h = GUISLIDERH (3)
		Case GUI_SLIDERV     w = GUISLIDERV (2)
		Case GUI_TEXTFIELD   h = GUITEXTFIELD_BG(3)
	End Select
	
	; VERIFY MEASURE
	If x < 0 Then x = 0
	If y < 0 Then y = 0
	If x+w > Win\innerw Then w = Win\innerw-x-1
	If y+h > Win\innerh Then h = Win\innerh-y-1
	Gadget\x	  	= x
	Gadget\y	  	= y
	Gadget\w		= w
	Gadget\h		= h
	Gadget\actualwidth 	= w
	
	Win\redrawAll = True
	
End Function


; --------------------------------------------------------------
; FUNCTION: CHECK IF GADGET IS ENABLED
; --------------------------------------------------------------
Function GUI_GadgetEnabled%(GadgetID%)
	Local  Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_GadgetEnabled||The specified gadget does not exist.",50) 
	Return Not Gadget\disabled
End Function


; --------------------------------------------------------------
; FUNCTION: ENABLE / DISABLE GADGET
; --------------------------------------------------------------
Function GUI_EnableGadget(GadgetID%, state%, showCursor%=False)
	Local i%, Win.TGUI_Window, Gadget.TGUI_Gadget
	
	Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)
	
	; IS WINDOW?
	If Gadget = Null Then
		For Win = Each TGUI_Window
			If Win\Img = GadgetID Then
				; LOOP THROUGH GADGETS (EXCEPT CLOSE BUTTON)
				For i = 1 To GUI_MAXGADGETS
					If Win\Gadgets[i] <> 0 Then GUI_EnableGadget Win\Gadgets[i], state
				Next
				Return
			End If
		Next
		; WINDOW NOT FOUND
		RuntimeError SC_BreakText("GUI_EnableGadget||The specified gadget or window does not exist.",50) 
	End If
	
	; IS GADGET
	Win = Object.TGUI_Window(Gadget\Win): If Win = Null Then RuntimeError SC_BreakText("GUI_EnableGadget||The specified window does not exist.",50) 
	Gadget\disabled = Not state
	
		; TEXTFIELD? SET FOCUS -----------------------------------
	If Gadget\disabled = False And Gadget\typ = GUI_TEXTFIELD And showCursor = True Then
		Local PrevGadget%  = GUI_TextGadget
		If GUI_TextGadget <> Handle(Gadget) Then FlushKeys
		GUI_TextGadget     = Handle(Gadget)
		GUI_ClickedGadget  = Handle(Gadget)
		SC_SetCursorPosition Gadget,x,y
		     ; PREVIOUSLY SELECTED GADGET WAS A TEXT FIELD? DELETE CURSOR THERE!
		If PrevGadget <> 0 And PrevGadget <> GUI_TextGadget Then SC_DrawGadget Object.TGUI_Gadget(PrevGadget)
	End If ; -------------------------------------------------
	
	If Gadget\disabled = True Then
	If GadgetID = GUI_DragGadget Then GUI_DragGadget = 0
	If GadgetID = GUI_TextGadget Then GUI_TextGadget = 0
End If

	; REDRAW GADGET ONLY
SC_DrawGadget Gadget, True
End Function


; --------------------------------------------------------------
; FUNCTION: SHOW GADGET
; --------------------------------------------------------------
Function GUI_ShowGadget(GadgetID%, state%)
	Local Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_ShowGadget||The specified gadget does not exist.",50) 
	Local Win.TGUI_Window    = Object.TGUI_Window(Gadget\Win): If Win    = Null Then RuntimeError SC_BreakText("GUI_ShowGadget||The specified window does not exist.",50) 
	
	state = Not state If state = Gadget\hidden Return 
		Gadget\hidden = state 
		
		If state = False Then
			SC_DrawGadget Gadget, True
		Else
			Win\redrawAll = True 
		End If
End Function


; --------------------------------------------------------------
; FUNCTION: CHECK IF GADGET IS VISIBLE
; --------------------------------------------------------------
Function GUI_GadgetVisible%(GadgetID%)
	Local Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID)  : If Gadget = Null Then RuntimeError SC_BreakText("GUI_GadgetVisible gadget does not exist.",50) 
	Return Not Gadget\hidden
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - BEVELED FRAME
;           IF NO PARAMETERS GIVEN, FRAME WILL COVER COMPLETE WINDOW
; --------------------------------------------------------------
Function GUI_AddFrame%(WinID%, disabled%=False, x%=0,y%=0, w%=0,h%=0)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddFrame||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddFrame||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	; COMPLETE WINDOW FRAME?
	If x + y + w + h = 0 Then
		x = x + 1
		y = y + 1
		w = Win\innerw-1
		h = Win\innerh-1
	End If
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  = GUI_BEVELFRAME
	Gadget\disabled   = disabled
	Gadget\Win        = Handle(Win)
	Win\Gadgets[n]    = Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - COLOR PICKER
; --------------------------------------------------------------
Function GUI_AddColorPicker%(WinID%, x%=0,y%=0, w%=0,h%=0,disabled%=False )
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddColorPicker||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddColorPicker||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  = GUI_COLORPICKER
	Gadget\disabled   = disabled
	Gadget\Win        = Handle(Win)
	Gadget\interactive= True
	Gadget\value      = 0           ; PICKED RGB VALUE
	Win\Gadgets[n]    = Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Gadget\value2     = w/2		; LAST PICKED X-COORD
	Gadget\value3     = h/2		; LAST PICKED Y-COORD
	Gadget\value4     = h/2		; LAST PICKED Y-COORD IN GRADIENT BOX
	
	; CREATE RESIZED COPY OF COLOR PALETTE
	Gadget\Res = CopyImage(GUI_Img_Palette)
	ResizeImage Gadget\Res,Gadget\w-18,Gadget\h
	
	Return Handle(Gadget)
	
End Function


Function GUI_GetColorPickerCoords%(GadgetID%,what%=False)
	
	Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID) : If Gadget = Null Then RuntimeError SC_BreakText("GUI_GetColorPickerCoords||Gadget does not exist.",50) 
	If what = 1 Then Return Gadget\value2
	If what = 2 Then Return Gadget\value3
	If what = 3 Then Return Gadget\value4
	
End Function


Function GUI_SetColorPickerCoords(GadgetID%,x%,y%,y2%)
	
	Gadget.TGUI_Gadget = Object.TGUI_Gadget(GadgetID) : If Gadget = Null Then RuntimeError SC_BreakText("GUI_SetColorPickerCoords||Gadget does not exist.",50) 
	If x  < 3 Then x  = 3 Else If x  > Gadget\w-18 Then x  = Gadget\w-18
	If y  < 3 Then y  = 3 Else If y  > Gadget\w-5  Then y  = Gadget\w-5
	If y2 < 3 Then y2 = 3 Else If y2 > Gadget\h-20 Then y2 = Gadget\h-20
	
	Gadget\value2 = x
	Gadget\value3 = y
	Gadget\value4 = y2
	SC_DrawGadget Gadget
	
End Function

; --------------------------------------------------------------
; FUNCTION: ADD GADGET - TEXT LABEL
; --------------------------------------------------------------
Function GUI_AddLabel%(WinID%,x%,y%,w%,h%,txt$,align$="LEFT",border%=0,disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddLabel||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddLabel||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_LABEL
	Gadget\border     	= border
	Gadget\disabled   	= disabled
	Gadget\caption$   	= txt$
	Gadget\caption_wrapped$	= SC_WrapGUIText$(txt$, w)
	Gadget\textalign$ 	= align$
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - BUTTON
; --------------------------------------------------------------
Function GUI_AddButton%(WinID%,x%,y%,w%, txt$, disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddButton||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddButton||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_BUTTON
	Gadget\disabled   	= disabled
	Gadget\caption$   	= txt$
	Gadget\interactive	= True
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - CHECKBUTTON
; --------------------------------------------------------------
Function GUI_AddCheckButton%(WinID%,ResID%,x%,y%,clipx%=0,clipy%=0,clipw%=0,cliph%=0,border%=False,disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddImageButton||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddImageButton||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	Local Tex.SC_Texture = Object.SC_Texture(ResID) : If Tex = Null Then RuntimeError SC_BreakText("GUI_AddImageButton||The specified Sprite Candy image resource does not exist.",50) 
	
	; VERIFY TEXTURE MODE
	If (Tex\mode And 2) = False And (Tex\mode And 4) = False Then RuntimeError SC_BreakText("GUI_AddImage||The texture mode of the specified image resource must be set to 2 or 4 only.",50) 
	
	w = clipw : If w = 0 Then w = Tex\tex_width -clipx
	h = cliph : If h = 0 Then h = Tex\tex_height-clipy
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_CHECKBUTTON
	Gadget\Res		= ResID
	Gadget\value		= False ; CHECKED
	Gadget\value2	   	= clipx
	Gadget\value3		= clipy 
	Gadget\border		= border
	Gadget\disabled   	= disabled
	Gadget\interactive	= True
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - IMAGEBUTTON
; --------------------------------------------------------------
Function GUI_AddImageButton%(WinID%,ResID%,x%,y%,clipx%=0,clipy%=0,clipw%=0,cliph%=0,border%=False,disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddImageButton||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddImageButton||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	Local Tex.SC_Texture = Object.SC_Texture(ResID) : If Tex = Null Then RuntimeError SC_BreakText("GUI_AddImageButton||The specified Sprite Candy image resource does not exist.",50) 
	
	; VERIFY TEXTURE MODE
	If (Tex\mode And 2) = False And (Tex\mode And 4) = False Then RuntimeError SC_BreakText("GUI_AddImage||The texture mode of the specified image resource must be set to 2 or 4 only.",50) 
	
	If clipw = 0 Then clipw = Tex\tex_width -clipx
	If cliph = 0 Then cliph = Tex\tex_height-clipy
	w = clipw + 6
	h = cliph + 6
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_IMAGEBUTTON
	Gadget\Res		= ResID
	Gadget\value		= clipx
	Gadget\value2	   	= clipy
	Gadget\value3		= clipw
	Gadget\value4           = cliph
	Gadget\border		= border
	Gadget\disabled   	= disabled
	Gadget\interactive	= True
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - CHECKBOX
; --------------------------------------------------------------
Function GUI_AddCheckBox%(WinID%,x%,y%,w%, txt$, selected%=False, disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddCheckBox||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddCheckBox||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_CHECKBOX
	Gadget\disabled   	= disabled
	Gadget\caption$   	= txt$
	Gadget\value		= selected
	Gadget\interactive	= True
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - CHECKBOX
; --------------------------------------------------------------
Function GUI_AddRadioBox%(WinID%,x%,y%,w%, radiogroup$, txt$, selected%=False, disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddRadioBox||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddRadioBox||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_RADIOBOX
	Gadget\disabled   	= disabled
	Gadget\caption$   	= txt$
	Gadget\radiogroup$	= radiogroup$
	Gadget\value		= selected
	Gadget\interactive	= True
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	; IF CHECKED: UNCHECK OTHER RADIOS OF SAME GROUP
	If Gadget\value = True Then SC_UncheckRadioGroup Gadget
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - PROGRESSBAR
; --------------------------------------------------------------
Function GUI_AddProgBar%(WinID%,x%,y%,w%, initial#=0.0, disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddProgBar||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddProgBar||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_PROGBAR
	Gadget\disabled   	= disabled
	Gadget\value		= initial
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - HORIZONTAL SLIDER
; --------------------------------------------------------------
Function GUI_AddSliderH%(WinID%,x%,y%,w%,steps%,showMarkers%=True,initial%=0,disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddSliderH||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddSliderH||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_SLIDERH
	Gadget\disabled   	= disabled
	Gadget\value		= initial 
	Gadget\border		= showMarkers
	Gadget\interactive	= True
	Gadget\Win        	= Handle(Win)
	
	Local minx% 		=  Gadget\x + GUISLIDERH(2)/2
	Local maxx% 		= ((Gadget\x+w) - GUISLIDERH(2)/2)-1
	Gadget\value2		=  steps-1 ; STEPS
	Gadget\value3		= (maxx-minx) / Gadget\value2 ; STEPSIZE
	
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - VERTICAL SLIDER
; --------------------------------------------------------------
Function GUI_AddSliderV%(WinID%,x%,y%,h%,steps%,showMarkers%=True,initial%=0,disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddSliderV||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddSliderV||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_SLIDERV
	Gadget\disabled   	= disabled
	Gadget\value		= initial 
	Gadget\border		= showMarkers
	Gadget\interactive	= True
	Gadget\Win        	= Handle(Win)
	
	Local miny% 		=  Gadget\y + GUISLIDERV(3)/2
	Local maxy% 		= ((Gadget\y+h) - GUISLIDERV(3)/2)-1
	Gadget\value2		=  steps-1 ; STEPS
	Gadget\value3		= (maxy-miny) / Gadget\value2 ; STEPSIZE
	
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - TEXTFIELD
; --------------------------------------------------------------
Function GUI_AddTextField%(WinID%,x%,y%,w%,max_chars%,allowed_chars$="",initial$="",password%=False,disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddTextField||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win) : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddTextField||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	
	If allowed_chars$ = "" Then allowed_chars$ = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_ .,!?'"
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_TEXTFIELD
	Gadget\disabled   	= disabled
	Gadget\caption$		= initial$ 
	Gadget\allowed_chars$	= allowed_chars$
	Gadget\max_chars	= max_chars
	Gadget\first_char_pos	= 1
	Gadget\password		= password
	Gadget\interactive	= True
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


; --------------------------------------------------------------
; FUNCTION: ADD GADGET - IMAGE
;           MASKED = TRUE : BLACK PIXELS WILL BE FILLED WITH WINDOW BACKGROUND
;           MASKED = FALSE: BLACK PIXELS WILL CREATE A TRANSPARENT HOLE WITHIN WINDOW
;                  DIABLED: AFFECTS BORDER STYLE ONLY
; --------------------------------------------------------------
Function GUI_AddImage%(WinID%,ResID%,x%,y%,clipx%=0,clipy%=0,clipw%=0,cliph%=0,maskMode%=True,border%=False,disabled%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_AddImage||The specified window does not exist.",50) 
	Local n% = SC_FindGadgetSlot(Win)   : If n > GUI_MAXGADGETS Then RuntimeError SC_BreakText("GUI_AddImage||Too many gadgets per window. Increase the GUI_MAXGADGETS constant.",50) 
	Local Tex.SC_Texture = Object.SC_Texture(ResID)
	
	w = clipw
	h = cliph
	
	; VERIFY TEXTURE MODE
	If Tex <> Null Then ; IS SC TEXTURE?
		If (Tex\mode And 2) = False And (Tex\mode And 4) = False Then RuntimeError SC_BreakText("GUI_AddImage||The texture mode of the specified image resource must be set to 2 or 4 only.",50) 
		If w = 0 Then w = Tex\tex_width -clipx
		If h = 0 Then h = Tex\tex_height-clipy
	Else ; IS BLITZ IMAGE?
		
		If w = 0 Then w = ImageWidth (ResID)
		If h = 0 Then h = ImageHeight(ResID)
	End If
	
	
	Local Gadget.TGUI_Gadget = New TGUI_Gadget
	Gadget\typ	  	= GUI_IMAGE
	Gadget\Res		= ResID
	Gadget\value	   	= clipx
	Gadget\value2		= clipy 
	Gadget\value3		= maskMode
	Gadget\border		= border
	Gadget\disabled		= disabled
	Gadget\Win        	= Handle(Win)
	Win\Gadgets[n]    	= Handle(Gadget)
	
	GUI_SetGadgetShape Handle(Gadget),x,y,w,h
	
	Return Handle(Gadget)
	
End Function


;---------------------------------------------------
; FUNCTION: SHOW A CONFIRM WINDOW
;---------------------------------------------------
Function GUI_Confirm (caption$,txt$,buttxt1$,buttxt2$,height%=100,icon%=0)
	
	Local Win%, Modal.TGUI_ModalWins
	
	Win            = GUI_CreateWindow (caption$, 0,0, 250,height, 1+16, "CENTER","CENTER", icon)
	Modal          = New TGUI_ModalWins
	Modal\Win      = Win
	Modal\caption$ = caption$
	Modal\Button1  = GUI_AddButton (Win,10 ,height-(GUIBUTTON(3)+4),110,buttxt1$,False)
	Modal\Button2  = GUI_AddButton (Win,130,height-(GUIBUTTON(3)+4),110,buttxt2$,False)
	GUI_AddLabel  (Win,10 ,4,230,height-30, txt$, "CENTER")
	
	Local WinObj.TGUI_Window = SC_GetWindowObject(Win) : If WinObj = Null Then RuntimeError SC_BreakText("GUI_Confirm||Could not create modal window.",50) 
	WinObj\ModalID = Handle(Modal)
	
	; SOUND
	ChannelVolume PlaySound(GUISND_Modal), GUI_volume
	
End Function


;---------------------------------------------------
; FUNCTION: CHECK IF CONFIRM WINDOW HAS BEEN CONFIRMED
;---------------------------------------------------
Function GUI_Confirmed$ (caption$)
	
	Local txt$, Modal.TGUI_ModalWins
	
	For Modal = Each TGUI_ModalWins
		If Modal\caption$ = caption$ And Modal\confirmed$ <> "" Then
		txt$ = Modal\confirmed$
		GUI_RemoveWindow Modal\Win
		Delete Modal
		Return txt$
	End If
Next

End Function


;---------------------------------------------------
; FUNCTION: SHOW A NOTIFY WINDOW
;---------------------------------------------------
Function GUI_Notify (caption$,txt$,buttxt$,height%=100,icon%=0)
	
	Local Win%, Modal.TGUI_ModalWins
	
	Win            = GUI_CreateWindow (caption$, 0,0, 250,height, 1+16, "CENTER","CENTER", icon)
	Modal          = New TGUI_ModalWins
	Modal\Win      = Win
	Modal\caption$ = caption$
	Modal\Button1  = GUI_AddButton (Win,70 ,height-(GUIBUTTON(3)+4),110,buttxt$,False)
	GUI_AddLabel  (Win,10 ,4,230,height-30, txt$, "CENTER")
	
	Local WinObj.TGUI_Window = SC_GetWindowObject(Win) : If WinObj = Null Then RuntimeError SC_BreakText("GUI_Confirm||Could not create modal window.",50) 
	WinObj\ModalID = Handle(Modal)
	
	; SOUND
	ChannelVolume PlaySound(GUISND_Modal), GUI_volume
	
End Function


;---------------------------------------------------
; FUNCTION: DRAW AN IMAGE TO A WINDOW (ONCE)
;---------------------------------------------------
Function GUI_DrawImage (WinID%,Img%,x%,y%,greyout%=False)
	
	Local Win.TGUI_Window = SC_GetWindowObject(WinID) : If Win = Null Then RuntimeError SC_BreakText("GUI_DrawImage||The specified window does not exist.",50) 
	If Img = 0 Then RuntimeError SC_BreakText("GUI_DrawImage||The specified image does not exist.")
	SC_CopyRect 0,0,ImageWidth(Img),ImageHeight(Img), x+Win\innerx,y+Win\innery, ImageBuffer(Img),TextureBuffer(Win\Tex), 0,0,0, greyout
	
End Function


; --------------------------------------------------------------
; FUNCTION: UPDATE GUI
; --------------------------------------------------------------
Function GUI_Update()
	
	Local Win.TGUI_Window, Win2.TGUI_Window, Gadget.TGUI_Gadget
	Local gadgethit%, i%, j%, x%, y%
	
	; MOUSE RELEASED?
	If GUI_mousedown = True  And MouseDown(1) = False Then GUI_mouseup  = True
	If GUI_mousedown = False And MouseDown(1) = True  Then GUI_mousehit = True   
	GUI_mousedown = MouseDown(1)
	
	
	; MOUSE JUST CLICKED? ----------------------------------
	
	If GUI_mousehit = True Then
		
		; SORT WINDOWS BY ZORDER
		SC_SortWindows
		; FIND CLICKED WINDOW
		For Win = Each TGUI_Window
			
			; INSIDE WINDOW?
			x = GUI_GetMouseX(Win\Img,False)
			y = GUI_GetMouseY(Win\Img,False)
			If SC_PointInRect(x,y, 0,0,Win\w,Win\h) And HUD_GetObjectVisibility(Win\Img) Then
				
				; MODAL MODE AND IS NO MODAL WINDOW? BLINK MODAL WINDOWS!
				If GUI_modalWindows > 0 And Win\ModalID = 0 Then
					For Win = Each TGUI_Window
						If Win\ModalID Then
							HUD_ClearEffects   Win\Img, "SMOOTHBLINK"
							HUD_FX_SmoothBlink Win\Img, 1.0,.5,200,600,0,1.0
							ChannelVolume PlaySound(GUISND_Modal), GUI_volume
						End If
					Next
					
				; NOT MODAL MODE OR IS MODAL WINDOW
				Else
					; BRING TO FRONT?
					If Win <> First TGUI_Window Then GUI_WindowToFront Win\Img
					
					; CHECK GADGETS
					gadgethit = SC_CheckGadgets(Win,"MOUSEHIT")
					
					; TEXT GADGET CLICKED?
					If gadgethit = True And GUI_TextGadget <> 0 Then
					End If
					
					; DRAGGABLE GADGET CLICKED?
					If gadgethit = True And GUI_DragGadget <> 0 Then
						Gadget = Object.TGUI_Gadget(GUI_DragGadget) : If Gadget = Null Then RuntimeError SC_BreakText("GUI_Update (MouseHit)||Drag gadget does not exist.",50) 
						GUI_drag_offx  = MouseX()-(Gadget\x + Win\innerx)
						GUI_drag_offy  = MouseY()-(Gadget\y + Win\innery)
					End If
					
					; NO GADGET CLICKED -START WINDOW DRAG
					If gadgethit = False And Win\draggable = True Then
						If GUI_TITLEDRAGONLY = False Or (GUI_TITLEDRAGONLY = True And y < Win\innery) Then
							GUI_DragWin    = Win\Img
							HUD_ClearEffects Win\Img, "MOVETO"
							GUI_drag_offx  = MouseX()-HUD_GetObjectX(Win\Img)
							GUI_drag_offy  = MouseY()-HUD_GetObjectY(Win\Img)
						End If
					End If
				End If ; MODAL CHECK
				
				Exit ; STOP LOOPING WINDOWS
			End If ; MOUSE IN WINDOW
			
		Next   ; WINDOW
		
		; THERE IS AN ACTIVE TEXT GADGET?
		; DISABLE INPUT WHEN CLICKED OUTSIDE
		If GUI_TextGadget <> 0 Then
			Gadget = Object.TGUI_Gadget(GUI_TextGadget) : If Gadget = Null Then RuntimeError SC_BreakText("GUI_Update (outside textfield check)||Text gadget does not exist.",50) 
			Win    = Object.TGUI_Window(Gadget\Win)     : If Win    = Null Then RuntimeError SC_BreakText("GUI_Update (outside textfield check)||Text gadget's window does not exist.",50) 
			If Win <> First TGUI_Window Or SC_PointInRect(x,y, Gadget\x+Win\innerx,Gadget\y+Win\innery,Gadget\w,Gadget\h) = False Then
				Gadget\cursorpos = 1								     
				GUI_TextGadget   = 0
				SC_DrawGadget Gadget
			End If
		End If
	End If
	
	; MOUSE HELD DOWN? -------------------------------------
	
	If MouseDown(1) = True Then
		
		GUI_mousedown = True
		
		; CURRENTLY DRAGGING A GADGET?
		If GUI_DragGadget <> 0 Then
			Gadget = Object.TGUI_Gadget(GUI_DragGadget) : If Gadget = Null Then RuntimeError SC_BreakText("GUI_Update (MouseDown)||Drag gadget does not exist.",50) 
			Win    = Object.TGUI_Window(Gadget\Win)     : If Win    = Null Then RuntimeError SC_BreakText("GUI_Update (MouseDown)||Drag gadget's window does not exist.",50) 
			Select Gadget\typ
					
				Case GUI_COLORPICKER
					x = GUI_GetMouseX(Win\Img,False)
					y = GUI_GetMouseY(Win\Img,False)
					SC_ColorPickerClicked Win,Gadget,x-(Gadget\x+Win\innerx),y-(Gadget\y+Win\innery)
					GUI_ClickedGadget = GUI_DragGadget
					
				; HORIZONTAL SLIDER
				Case GUI_SLIDERH 
					x = GUI_GetMouseX(Win\Img,False)
					i = (x - ((Gadget\x+Win\innerx) + GUISLIDERH(2)/2)) / Gadget\value3 ; value3: STEPSIZE
					If i < 0 Then i = 0 Else If i > Gadget\value2 Then i = Gadget\value2 ; value2: STEPS
					; VALUE CHANGED?
					If i <> Gadget\value Then
						ChannelVolume PlaySound(GUISND_Slider), GUI_volume
						GUI_SetGadgetValue  GUI_DragGadget, i
						GUI_ClickedGadget = GUI_DragGadget
					End If
					
				; VERTICAL SLIDER
				Case GUI_SLIDERV 
					y = GUI_GetMouseY(Win\Img,False)
					i = (  (Gadget\y+Win\innery)+(Gadget\h-GUISLIDERV(3)/2) - y  ) / Gadget\value3 ; value3: STEPSIZE
					If i < 0 Then i = 0 Else If i > Gadget\value2 Then i = Gadget\value2 ; value2: STEPS
					; VALUE CHANGED?
					If i <> Gadget\value Then
						ChannelVolume PlaySound(GUISND_Slider), GUI_volume
						GUI_SetGadgetValue  GUI_DragGadget, i
						GUI_ClickedGadget = GUI_DragGadget
					End If
			End Select
		End If
		
		; CURRENTLY DRAGGING A WINDOW?
		If GUI_DragWin <> 0 And HUD_ObjectExists(GUI_DragWin) Then
			HUD_PositionObject GUI_DragWin, MouseX()-GUI_drag_offx, MouseY()-GUI_drag_offy
			; REMEMBER LAST MOUSE POS (WIN SLIDE EFFECT)
			GUI_mouse_lx = MouseX()
			GUI_mouse_ly = MouseY()
		End If
		
	End If
	
	; MOUSE JUST RELEASED? ---------------------------------
	If GUI_mouseup = True Then
		
		; RESET PRESSED GADGETS (TOPMOST WINDOW)
		SC_CheckGadgets First TGUI_Window,"MOUSEUP"
		
		; STOP GADGET DRAG?
		If GUI_DragGadget <> 0 Then GUI_DragGadget = 0
		
		; STOP WINDOW DRAG?
		If GUI_DragWin <> 0 And HUD_ObjectExists(GUI_DragWin) Then
			x = (MouseX()-GUI_drag_offx) + (MouseX()-GUI_mouse_lx)
			y = (MouseY()-GUI_drag_offy) + (MouseY()-GUI_mouse_ly)
			If GUI_SLIDEDRAG = True Then HUD_FX_MoveTo Gui_DragWin, x,y, 700, 5,5 ; 11,11 
			GUI_DragWin = 0
		End If
		
	End If
	
	; UPDATE ACTIVE TEXT FIELD -----------------------------
	
	If GUI_TextGadget <> 0 Then
		Gadget = Object.TGUI_Gadget(GUI_TextGadget) : If Gadget = Null Then RuntimeError SC_BreakText("GUI_Update (Update text field)||Text gadget does not exist.",50) 
		
		; CONTROL KEYS?
		If MilliSecs()-GUI_lastKeyHit > 50 Then
			GUI_lastKeyHit = MilliSecs()
			; BACKSPACE
			
			If KeyDown(14) And Gadget\cursorpos > 1 Then
			
			Gadget\caption$  = Left(Gadget\caption$,Gadget\cursorpos-2) + Mid(Gadget\caption$,Gadget\cursorpos,-1) 
			Gadget\cursorpos = Gadget\cursorpos - 1
			ChannelVolume PlaySound(GUISND_Type), GUI_volume
			; DEL
		Else If KeyDown(211) And Gadget\cursorpos <= Len(Gadget\caption$) Then
			Gadget\caption$  = Left(Gadget\caption$,Gadget\cursorpos-1) + Mid(Gadget\caption$,Gadget\cursorpos+1,-1) 
			ChannelVolume PlaySound(GUISND_Type), GUI_volume
			; ENTER
		Else If KeyDown(28) Or KeyHit(156) Then
			Gadget\cursorpos = 1								     
			GUI_TextGadget   = 0
			; POS 1
		Else If KeyHit(199) Then
			Gadget\cursorpos = 1								     
			; END
		Else If KeyHit(207) Then
			Gadget\cursorpos = Len(Gadget\caption$)+1
			; LEFT
		Else If KeyDown(203) Or KeyDown(75) Then
			If Gadget\cursorpos > 1 Then Gadget\cursorpos = Gadget\cursorpos - 1
			; RIGHT
		Else If KeyDown(205) Or KeyDown(77) Then
			If Gadget\cursorpos < Len(Gadget\caption$)+1 Then Gadget\cursorpos = Gadget\cursorpos + 1
		End If
	End If
	
		; OTHER KEYS
	i = GetKey() : If i <> 0 Then
		If Len(Gadget\caption$) < Gadget\max_chars Then
			For j = 1 To Len(Gadget\allowed_chars$)
				If i = Asc(Mid(Gadget\allowed_chars$,j,1)) Then
					Gadget\caption$  = Left(Gadget\caption$,Gadget\cursorpos-1) + Chr(i) + Mid(Gadget\caption$,Gadget\cursorpos,-1) 
					Gadget\cursorpos = Gadget\cursorpos + 1
					ChannelVolume PlaySound(GUISND_Type), GUI_volume
					Exit
				End If
			Next
		End If
	End If
	
	SC_DrawGadget Gadget
	
End If

GUI_mouseup  = False
GUI_mousehit = False

	; UPDATE / REDRAW WINDOWS ------------------------------

For Win = Each TGUI_Window
	If Win\redrawAll = True Or  Win\redrawTitle = True SC_DrawWindow Win
	Next
	
End Function





; --------------------------------------------------------------





;---------------------------------------------------
; PRIVATE: REDRAW A WINDOW (ALL, TITLE ONLY OR JUST
;          ADD A SINGLE GADGET
;---------------------------------------------------
Function SC_DrawWindow(Win.TGUI_Window)
	
	If Win = Null Then RuntimeError SC_BreakText("SC_DrawWindow||The specified window does not exist.",50) 
	
	
	Local Gadget.TGUI_Gadget, x%, y%, i%, a%
	
	If Win\redrawAll = True Then
		
		; FRAME ------------------------------------------------
		
		; WINDOW BACKGROUND
		x = 0 : y = Win\innery
		While y < Win\h
			CopyRect  GUIBG(0),GUIBG(1),GUIBG(2),GUIBG(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
			x = x + GUIBG(2) : If x > Win\w Then x = 0 : y = y + GUIBG(3)
		Wend
		; LEFT BORDER
		y = Win\innery
		While y < Win\h
			CopyRect  GUIBORDER_L(0),GUIBORDER_L(1),GUIBORDER_L(2),GUIBORDER_L(3), 1,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
			y = y + GUIBORDER_L(3)
		Wend
		; RIGHT BORDER
		y = Win\innery
		While y < Win\h
			CopyRect  GUIBORDER_R(0),GUIBORDER_R(1),GUIBORDER_R(2),GUIBORDER_R(3), (Win\w-GUIBORDER_R(2))+1,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
			y = y + GUIBORDER_R(3)
		Wend
		; BOTTOM-MIDDLE
		x = GUICORNER_BL(2) + 1
		While x < Win\w
			CopyRect  GUIBORDER_B(0),GUIBORDER_B(1),GUIBORDER_B(2),GUIBORDER_B(3), x,(Win\h-GUIBORDER_B(3))+1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
			x = x + GUIBORDER_B(2)
		Wend
		; BOTTOM CORNERS
		CopyRect GUICORNER_BL(0),GUICORNER_BL(1),GUICORNER_BL(2),GUICORNER_BL(3), 1,(Win\h-GUICORNER_BL(3))+1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
		CopyRect GUICORNER_BR(0),GUICORNER_BR(1),GUICORNER_BR(2),GUICORNER_BR(3), (Win\w-GUICORNER_BR(2))+1,(Win\h-GUICORNER_BR(3))+1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
		
		
		; GADGETS ----------------------------------------------
		
		For i = 0 To GUI_MAXGADGETS
			Gadget = Object.TGUI_Gadget(Win\Gadgets[i])
			If Gadget <> Null Then SC_DrawGadget Gadget
		Next
		
	End If
	
	
	; TITLEBAR ---------------------------------------------
	
	If Win\redrawTitle = True Or Win\redrawAll = True Then
		
		; NO TITLE BAR
		If Win\notitlebar  = True Then
			; TOP-MIDDLE BAR
			x = GUICORNER_TLS(2) + 1
			While x < Win\w
				CopyRect GUIBORDER_TS(0),GUIBORDER_TS(1),GUIBORDER_TS(2),GUIBORDER_TS(3), x,1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
				x = x  + GUIBORDER_TS(2)
			Wend
			; TOP-LEFT CORNER
			CopyRect GUICORNER_TLS(0),GUICORNER_TLS(1),GUICORNER_TLS(2),GUICORNER_TLS(3), 1,1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
			; TOP-RIGHT CORNER
			CopyRect GUICORNER_TRS(0),GUICORNER_TRS(1),GUICORNER_TRS(2),GUICORNER_TRS(3), (Win\w-GUICORNER_TRS(2))+1,1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
			
		; TITLE BAR
		Else
			; TOP-MIDDLE BAR
			x = GUICORNER_TL(2) + 1
			While x < Win\w
				CopyRect GUIBORDER_T(0),GUIBORDER_T(1),GUIBORDER_T(2),GUIBORDER_T(3), x,1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
				x = x  + GUIBORDER_T(2)
			Wend
			; TOP-LEFT CORNER
			CopyRect GUICORNER_TL(0),GUICORNER_TL(1),GUICORNER_TL(2),GUICORNER_TL(3), 1,1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
			; TOP-RIGHT CORNER
			CopyRect GUICORNER_TR(0),GUICORNER_TR(1),GUICORNER_TR(2),GUICORNER_TR(3), (Win\w-GUICORNER_TR(2))+1,1, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
			; ICON
			If Win\icon > -1 Then
				x = 0
				y = 0
				For i = 1 To Win\icon
					x = x + 16 : If x > TextureWidth(GUI_IconTex)-16 Then x = 0 : y = y + 16 : If y > TextureHeight(GUI_IconTex)-16 Then y = 0 : Exit
				Next
				SC_CopyRect x,y,16,16, GUI_ICONPOS(0),GUI_ICONPOS(1), TextureBuffer(GUI_IconTex), TextureBuffer(Win\Tex)
			End If
			
			; CAPTION
			y = GUITITLETEXT_Y
			Local min_x% = GUI_Font1\max_width
			Local max_x% = Win\w - GUI_Font1\max_width
			If Win\icon > -1 Then min_x = GUI_ICONPOS(0) + 16 + GUI_Font1\max_width
			If Win\closeable = True
				If GUI_CLOSEBUTTONRIGHT = 1 Then max_x = max_x - (GUICLOSEBUT(4) + GUI_Font1\max_width)
				If GUI_CLOSEBUTTONRIGHT = 0 Then min_x = GUICLOSEBUT(4) + GUICLOSEBUT(2) + 5
			End If
			; TITLE ALIGNMENT?
			If GUI_TITLETEXTALIGN = 0 Then
				x = min_x
			Else If GUI_TITLETEXTALIGN = 1 Then
				x = Win\w/2 - SC_GetLineWidth(Win\caption$,1,True)/2
				If x < min_x Then x = min_x
			Else If GUI_TITLETEXTALIGN = 2 Then 
				x = max_x - SC_GetLineWidth(Win\caption$,1,True)
				If x < min_x Then x = min_x
			End If
			
			For i = 1 To Len(Win\caption$)
				a = Asc(Mid(Win\caption$, i, 1))
				If a <> 32 Then SC_CopyRect GUI_Font1\xpos[a],GUI_Font1\ypos[a],GUI_Font1\widths[a],GUI_Font1\heights[a], x,y, TextureBuffer(GUI_TexFont1), TextureBuffer(Win\Tex),GUI_TITLETEXTCOLOR(0),GUI_TITLETEXTCOLOR(1),GUI_TITLETEXTCOLOR(2)
				x = x + GUI_Font1\widths[a] : If x > max_x Then Exit 
			Next
			; CLOSE BUTTON
			If Win\closeable = True Then SC_DrawGadget Object.TGUI_Gadget(Win\Gadgets[0])
		End If
		
		LockBuffer   TextureBuffer(Win\Tex)
		For y = 0 To Win\h-1
			WritePixelFast 0      ,y,0,TextureBuffer(Win\Tex)
			WritePixelFast Win\w+1,y,0,TextureBuffer(Win\Tex)
		Next
		For x = 0 To Win\w
			WritePixelFast x ,0      ,0,TextureBuffer(Win\Tex)
			WritePixelFast x ,Win\h+1,0,TextureBuffer(Win\Tex)
		Next
		UnlockBuffer TextureBuffer(Win\Tex)
		
	End If
	
	
	Win\redrawAll   = False
	Win\redrawTitle = False
	
End Function


;---------------------------------------------------
; PRIVATE: DRAW A GADGET
;---------------------------------------------------
Function SC_DrawGadget(Gadget.TGUI_Gadget, eraseBefore%=False)
	
	If Gadget\hidden Return
		Local Win.TGUI_Window = Object.TGUI_Window(Gadget\Win): If Win = Null Then RuntimeError SC_BreakText("SC_DrawGadget||The specified window does not exist.",50) 
		Local Tex.SC_Texture
		Local Img%,i%,j%,k%,x%,y%,w%,h%,lx%,ly%,texy%,minx%,maxx%
		Local Buffer% = GraphicsBuffer() : SetBuffer TextureBuffer(Win\Tex)
		
		x  = Gadget\x + Win\innerx
		y  = Gadget\y + Win\innery
		lx = x 
		ly = y
		w  = Gadget\w
		h  = Gadget\h
		
		Select Gadget\typ
			Case GUI_BEVELFRAME SC_DrawGadgetBorder Gadget	
				
			Case GUI_LABEL ; -------------------------------
			; DRAW WINDOW BACKGROUND BEHIND?
				If eraseBefore = True Then SC_EraseGadget Gadget
				
			; FIND LINE START POSITIONS
				Local xpos%[255] : k = 0
				Repeat
					k = k + 1
					xpos[k] = SC_GetLineWidth(Gadget\caption_wrapped$,k)
					If xpos[k] = -1 Then Exit
					Select Gadget\textalign$
						Case "RIGHT"  xpos[k] =(lx+Gadget\w)-xpos[k]-Gadget\border*2 
						Case "CENTER" xpos[k] = lx+(Gadget\w-xpos[k])/2
						Default       xpos[k] = lx + Gadget\border*2
					End Select
				Forever
				
			; WRITE CHARS
				k = 1 : x = xpos[k]
				For i = 1 To Len(Gadget\caption_wrapped$)
					j = Asc(Mid(Gadget\caption_wrapped$, i, 1))
				; NEW LINE?
					If j = 13 Then k = k + 1 : x = xpos[k] : y = y + GUI_Font2\line_height : If y+GUI_Font2\line_height > ly+h Then Exit 
				; PRINT CHAR?
					If j <> 32 And j <> 13 Then
					; GADGET ENABLED / DISABLED?
						If Gadget\disabled = False Then
							SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_FONTCOLOR(0),GUI_FONTCOLOR(1),GUI_FONTCOLOR(2)
						Else
							SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x+1,y+1, TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BEVELCOLORS(0,0),GUI_BEVELCOLORS(0,1),GUI_BEVELCOLORS(0,2)
							SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BEVELCOLORS(1,0),GUI_BEVELCOLORS(1,1),GUI_BEVELCOLORS(1,2)
						End If
					End If
				; POSITION
					If j <> 13 Then x = x + GUI_Font2\widths[j]
				Next
			; BORDER?
				If Gadget\border = True Then SC_DrawGadgetBorder Gadget
				
			Case GUI_CLOSEBUTTON ; -------------------------
			; PRESSED OR NORMAL ?
				texy = GUICLOSEBUT(1) + Gadget\pressed * GUICLOSEBUT(3)
				If GUI_CLOSEBUTTONRIGHT = 1 Then SC_CopyRect GUICLOSEBUT(0),texy,GUICLOSEBUT(2),GUICLOSEBUT(3), Win\w-GUICLOSEBUT(2)-GUICLOSEBUT(4),GUICLOSEBUT(5), TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
				If GUI_CLOSEBUTTONRIGHT = 0 Then SC_CopyRect GUICLOSEBUT(0),texy,GUICLOSEBUT(2),GUICLOSEBUT(3), GUICLOSEBUT(4),GUICLOSEBUT(5), TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
				
			Case GUI_BUTTON ; ------------------------------
			; PRESSED OR NORMAL ?
				texy = GUIBUTTON_L(1) + Gadget\pressed * GUIBUTTON_L(3)
				
			; DRAW CAPS
				SC_CopyRect    GUIBUTTON_L(0),texy,GUIBUTTON_L(2),GUIBUTTON_L(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
				SC_CopyRect    GUIBUTTON_R(0),texy,GUIBUTTON_R(2),GUIBUTTON_R(3), x+(w-GUIBUTTON_R(2)),y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
				x = lx + GUIBUTTON_L(2)
				
			; DRAW BUTTON
				maxx = (lx+w) - GUIBUTTON_R(2)
				While (x+GUIBUTTON(2)) < maxx
					CopyRect GUIBUTTON(0),texy,GUIBUTTON(2),GUIBUTTON(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
					x = x +  GUIBUTTON(2)
				Wend
				CopyRect GUIBUTTON(0),texy,maxx-x,GUIBUTTON(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
				x = lx + (Gadget\w - SC_GetLineWidth(Gadget\caption$,1))/2
				
			; TEXT MUST STAY INSIDE BUTTON
				If x < lx Then x = lx
				y = ly + GUIBUTTON(3)/2 - GUI_Font2\line_height/2
				
			; SHIFT TEXT WHEN PRESSED			
				x = x + Gadget\pressed : y = y + Gadget\pressed
				
			; WRITE CHARS
				For i = 1 To Len(Gadget\caption$)
					j = Asc(Mid(Gadget\caption$, i, 1))
				; TEXT TOO LONG? EXIT!
					If (x+GUI_Font2\widths[j]) > lx + Gadget\w Exit
				; PRINT CHAR?
						If j <> 32 And j <> 13 Then
					; GADGET ENABLED / DISABLED?
							If Gadget\disabled = False Then
								SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BUTTONTEXTCOLOR(0),GUI_BUTTONTEXTCOLOR(1),GUI_BUTTONTEXTCOLOR(2)
							Else
								SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x+1,y+1, TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BUTTONTEXTCOLORH(0),GUI_BUTTONTEXTCOLORH(1),GUI_BUTTONTEXTCOLORH(2)
								SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BUTTONTEXTCOLORL(0),GUI_BUTTONTEXTCOLORL(1),GUI_BUTTONTEXTCOLORL(2)
							End If
						End If
				; POSITION
						x = x + GUI_Font2\widths[j]
					Next
					
				Case GUI_COLORPICKER ; -------------------------
			; DRAW PALETTE
					SC_CopyRect 0,0,w-18,h, x,y, ImageBuffer(Gadget\Res), TextureBuffer(Win\Tex)
			; DRAW BORDERS
					Color GUI_BEVELCOLORS(1,0),GUI_BEVELCOLORS(1,1),GUI_BEVELCOLORS(1,2)
					Rect  x,y,w-18,h,False
					Rect  x+w-16,y,16,h-18, False
					Rect  x+w-16,y+(h-16),16,16, False
					Color GUI_BEVELCOLORS(0,0),GUI_BEVELCOLORS(0,1),GUI_BEVELCOLORS(0,2)
					Line  x,y+h-1,x+(w-19),y+h-1
					Line  x+(w-19),y,x+(w-19),y+h-1
					Line  x+w-1,y,x+w-1,y+(h-19)
					Line  x+(w-16),y+(h-19),x+w-1,y+(h-19)
					Line  x+(w-16),y+h-1,x+w-1,y+h-1
					Line x+w-1,y+(h-16),x+w-1,y+h-1
			; DO MARKER & REDRAW STUFF
					SC_ColorPickerClicked Win,Gadget,Gadget\value2,Gadget\value3
					
				Case GUI_IMAGEBUTTON ; -------------------------
					Tex = Object.SC_Texture(Gadget\Res) : If Tex = Null Then RuntimeError SC_BreakText("Sprite Candy GUI||A GUI image should be drawn on window '"+Win\caption$+"' but the required Sprite Candy image resource could not be found (perhaps deleted?).",50) 
					
			; PRESSED OR NORMAL ?
					texy = GUIBUTTON_L(1) + Gadget\pressed * GUIBUTTON_L(3)
					
			; DRAW CAPS
					SC_CopyRect GUIBUTTON_L(0),texy,GUIBUTTON_L(2),GUIBUTTON_L(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
					SC_CopyRect GUIBUTTON_R(0),texy,GUIBUTTON_R(2),GUIBUTTON_R(3), x+(w-GUIBUTTON_R(2)),y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
					x = lx + GUIBUTTON_L(2)
					
			; DRAW BUTTON
					maxx = (lx+w) - GUIBUTTON_R(2)
					While (x+GUIBUTTON(2)) < maxx
						CopyRect GUIBUTTON(0),texy,GUIBUTTON(2),GUIBUTTON(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
						x = x +  GUIBUTTON(2)
					Wend
					CopyRect GUIBUTTON(0),texy,maxx-x,GUIBUTTON(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
					
			; IMAGE X/Y POSITION
					x = lx + 3
					y = ly + 3
					
			; SHIFT TEXT WHEN PRESSED			
					x = x + Gadget\pressed : y = y + Gadget\pressed
					
			; DRAW IMAGE CLIP
					h = Int(Gadget\value4) : If h > GUIBUTTON(3) Then h = GUIBUTTON(3)-3
					SC_CopyRect Int(Gadget\value),Int(Gadget\value2),Int(Gadget\value3),h, x,y, TextureBuffer(Tex\Texture), TextureBuffer(Win\Tex), 0,0,0, Gadget\disabled
					
				Case GUI_CHECKBUTTON ; -------------------------
					Tex = Object.SC_Texture(Gadget\Res) : If Tex = Null Then RuntimeError SC_BreakText("Sprite Candy GUI||A GUI image should be drawn on window '"+Win\caption$+"' but the required Sprite Candy image resource could not be found (perhaps deleted?).",50) 
			; REDRAW WINDOW BACKGROUND BEHIND IMAGE
					SC_EraseGadget Gadget
			; DRAW IMAGE CLIP
					SC_CopyRect Int(Gadget\value2)+Int(Gadget\value)*w,Int(Gadget\value3),w,h, x,y, TextureBuffer(Tex\Texture), TextureBuffer(Win\Tex), 0,0,0, Gadget\disabled
			; BORDER?
					If Gadget\border = True Then SC_DrawGadgetBorder Gadget
					
				Case GUI_CHECKBOX ; ----------------------------
			; DRAW WINDOW BACKGROUND BEHIND?
					If eraseBefore = True Then SC_EraseGadget Gadget
					
			; CHECKED OR NORMAL ?
					texy = GUICHECKBOX(1) : If Gadget\value = True Then texy = texy + GUICHECKBOX(3)
					
			; DRAW BOX
					SC_CopyRect GUICHECKBOX(0),texy,GUICHECKBOX(2),GUICHECKBOX(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
					
			; WRITE CHARS
					x = x + GUICHECKBOX(2) + 5
					y = ly + GUICHECKBOX(3)/2 - GUI_Font2\line_height/2
					For i = 1 To Len(Gadget\caption$)
						j = Asc(Mid(Gadget\caption$, i, 1))
				; TEXT TOO LONG? EXIT!
						If (x+GUI_Font2\widths[j]) > lx + Gadget\w Exit
				; PRINT CHAR?
							If j <> 32 And j <> 13 Then
					; GADGET ENABLED / DISABLED?
								If Gadget\disabled = False Then
									SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_FONTCOLOR(0),GUI_FONTCOLOR(1),GUI_FONTCOLOR(2)
								Else
									SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x+1,y+1, TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BEVELCOLORS(0,0),GUI_BEVELCOLORS(0,1),GUI_BEVELCOLORS(0,2)
									SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BEVELCOLORS(1,0),GUI_BEVELCOLORS(1,1),GUI_BEVELCOLORS(1,2)
								End If
							End If
				; POSITION
							x = x + GUI_Font2\widths[j]
						Next
						
			; FIND ACTUAL WIDTH
						Gadget\actualwidth = x-lx
						
					Case GUI_RADIOBOX ; ----------------------------
			; DRAW WINDOW BACKGROUND BEHIND?
						If eraseBefore = True Then SC_EraseGadget Gadget
						
			; CHECKED OR NORMAL ?
						texy = GUIRADIOBOX(1) : If Gadget\value = True Then texy = texy + GUIRADIOBOX(3)
						
			; DRAW BOX
						SC_CopyRect GUIRADIOBOX(0),texy,GUIRADIOBOX(2),GUIRADIOBOX(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
						
			; WRITE CHARS
						x = x + GUIRADIOBOX(2) + 5
						y = ly + GUIRADIOBOX(3)/2 - GUI_Font2\line_height/2
						For i = 1 To Len(Gadget\caption$)
							j = Asc(Mid(Gadget\caption$, i, 1))
				; TEXT TOO LONG? EXIT!
							If (x+GUI_Font2\widths[j]) > lx + Gadget\w Exit
				; PRINT CHAR?
								If j <> 32 And j <> 13 Then
					; GADGET ENABLED / DISABLED?
									If Gadget\disabled = False Then
										SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_FONTCOLOR(0),GUI_FONTCOLOR(1),GUI_FONTCOLOR(2)
									Else
										SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x+1,y+1, TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BEVELCOLORS(0,0),GUI_BEVELCOLORS(0,1),GUI_BEVELCOLORS(0,2)
										SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_BEVELCOLORS(1,0),GUI_BEVELCOLORS(1,1),GUI_BEVELCOLORS(1,2)
									End If
								End If
				; POSITION
								x = x + GUI_Font2\widths[j]
							Next
							
			; SET TO ACTUAL WIDTH
							Gadget\actualwidth = x-lx
							
						Case GUI_PROGBAR ; -----------------------------
			; DRAW CAPS
							SC_CopyRect    GUIPROGRESS_L(0),GUIPROGRESS_L(1),GUIPROGRESS_L(2),GUIPROGRESS_L(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							SC_CopyRect    GUIPROGRESS_R(0),GUIPROGRESS_R(1),GUIPROGRESS_R(2),GUIPROGRESS_R(3), x+(w-GUIPROGRESS_R(2)),y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							x = lx + GUIPROGRESS_L(2)
							
			; DRAW BACKGROUND
							maxx = (lx+w) - GUIPROGRESS_R(2)
							While (x+GUIPROGRESS_BG(2)) < maxx
								SC_CopyRect GUIPROGRESS_BG(0),GUIPROGRESS_BG(1),GUIPROGRESS_BG(2),GUIPROGRESS_BG(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
								x = x +  GUIPROGRESS_BG(2)
							Wend
							SC_CopyRect GUIPROGRESS_BG(0),GUIPROGRESS_BG(1),maxx-x,GUIPROGRESS_BG(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
			; VERIFY VALUE (0.0-1.0)
							If Gadget\value < 0.0 Then Gadget\value = 0.0 Else If Gadget\value > 1.0 Then Gadget\value = 1.0 
							
			; DRAW BAR
							x    = lx + GUIPROGRESS_L(2)
							y    = ly + GUIPROGRESS_BG(3)/2 - GUIPROGRESS_BAR(3)/2
							maxx = x + ((maxx-x) * Gadget\value) ; BAR WIDTH
			; DRAW BAR BLOCKWISE?
							If GUI_BLOCKYBAR = True Then maxx = ((maxx / GUIPROGRESS_BAR(2)) * GUIPROGRESS_BAR(2))+1
			; ENABLED / DISABLED?
							texy = GUIPROGRESS_BAR(1) + Gadget\disabled*GUIPROGRESS_BAR(3)
							While (x+GUIPROGRESS_BAR(2)) <= maxx
								SC_CopyRect GUIPROGRESS_BAR(0),texy,GUIPROGRESS_BAR(2),GUIPROGRESS_BAR(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
								x = x +  GUIPROGRESS_BAR(2)
							Wend
							SC_CopyRect GUIPROGRESS_BAR(0),texy,maxx-x,GUIPROGRESS_BAR(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
						Case GUI_SLIDERH ; -----------------------------
							
			; \value2: STEPS
			; \value3: STEPSIZE
							
			; ALWAYS ERASE BEFORE
							SC_EraseGadget Gadget
							
			; DRAW CAPS
							y = y + GUISLIDERH(3)/2 - GUISLIDERH_BG(3)/2
							SC_CopyRect GUISLIDERH_L(0),GUISLIDERH_L(1),GUISLIDERH_L(2),GUISLIDERH_L(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							SC_CopyRect GUISLIDERH_R(0),GUISLIDERH_R(1),GUISLIDERH_R(2),GUISLIDERH_R(3), x+(w-GUISLIDERH_R(2)),y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
			; DRAW BACKGROUND
							x = lx + GUISLIDERH_L(2)
							maxx = (lx+w) - GUISLIDERH_R(2)
							While (x+GUISLIDERH_BG(2)) < maxx
								SC_CopyRect GUISLIDERH_BG(0),GUISLIDERH_BG(1),GUISLIDERH_BG(2),GUISLIDERH_BG(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
								x = x +  GUISLIDERH_BG(2)
							Wend
							SC_CopyRect GUISLIDERH_BG(0),GUISLIDERH_BG(1),maxx-x,GUISLIDERH_BG(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
			; CALCULATE STEP WIDTH
							minx =   lx    + GUISLIDERH(2)/2
							maxx = ((lx+w) - GUISLIDERH(2)/2)-1
							
			; DRAW STEP MARKERS?
							If Gadget\border = True Then
								Color GUI_BEVELCOLORS(1,0),GUI_BEVELCOLORS(1,1),GUI_BEVELCOLORS(1,2)
								x = minx
								y = ly + Gadget\h - 2
								For i = 0 To Gadget\value2 : Rect x+i*Gadget\value3,y,1,2,False : Next
								
							End If
							
			; VERIFY VALUE
							If Gadget\value < 0 Then Gadget\value = 0 Else If Gadget\value > Gadget\value2 Then Gadget\value = Gadget\value2
							
			; DRAW SLIDER
							x = (minx-GUISLIDERH(2)/2) + Gadget\value * Gadget\value3
							y = ly
							texy = GUISLIDERH(1) + Gadget\disabled*GUISLIDERH(3)
							SC_CopyRect    GUISLIDERH(0),texy,GUISLIDERH(2),GUISLIDERH(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
						Case GUI_SLIDERV ; -----------------------------
			; \value2: STEPS
			; \value3: STEPSIZE
							
			; ALWAYS ERASE BEFORE
							SC_EraseGadget Gadget
							
			; DRAW CAPS
							x = x + (Gadget\w / 2) - (GUISLIDERV_T(2) / 2)
							SC_CopyRect GUISLIDERV_T(0),GUISLIDERV_T(1),GUISLIDERV_T(2),GUISLIDERV_T(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							SC_CopyRect GUISLIDERV_B(0),GUISLIDERV_B(1),GUISLIDERV_B(2),GUISLIDERV_B(3), x,y+(h-GUISLIDERV_B(3)), TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
			; DRAW BACKGROUND
							y = ly + GUISLIDERV_T(3)
							maxx = (ly+h) - GUISLIDERV_B(3)
							While (y+GUISLIDERV_BG(3)) < maxx
								SC_CopyRect GUISLIDERV_BG(0),GUISLIDERV_BG(1),GUISLIDERV_BG(2),GUISLIDERV_BG(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
								y = y +  GUISLIDERV_BG(3)
							Wend
							SC_CopyRect GUISLIDERV_BG(0),GUISLIDERV_BG(1),GUISLIDERV_BG(2),maxx-y, x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
			; CALCULATE STEP WIDTH
							minx =   ly    + GUISLIDERV(3)/2
							maxx = ((ly+h) - GUISLIDERV(3)/2)-1
							
			; DRAW STEP MARKERS?
							If Gadget\border = True Then
								Color GUI_BEVELCOLORS(1,0),GUI_BEVELCOLORS(1,1),GUI_BEVELCOLORS(1,2)
								y = minx
								x = lx
								For i = 0 To Gadget\value2
									y = minx + i*Gadget\value3
									Rect x  ,y,2,1,False
									Rect x+(GUISLIDERV(2)-2),y,2,1,False
								Next
							End If
							
			; VERIFY VALUE
							If Gadget\value < 0 Then Gadget\value = 0 Else If Gadget\value > Gadget\value2 Then Gadget\value = Gadget\value2
							
			; DRAW SLIDER
							y    = (maxx-GUISLIDERV(3)/2) - Gadget\value * Gadget\value3
							x    = lx
							texy = GUISLIDERV(1) + Gadget\disabled*GUISLIDERV(3)
							SC_CopyRect GUISLIDERV(0),texy,GUISLIDERV(2),GUISLIDERV(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
							
						Case GUI_TEXTFIELD ; ---------------------------
							
			; DRAW CAPS
							SC_CopyRect GUITEXTFIELD_L(0),GUITEXTFIELD_L(1),GUITEXTFIELD_L(2),GUITEXTFIELD_L(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							SC_CopyRect GUITEXTFIELD_R(0),GUITEXTFIELD_R(1),GUITEXTFIELD_R(2),GUITEXTFIELD_R(3), x+(w-GUITEXTFIELD_R(2)),y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
			; DRAW BACKGROUND
							x    = lx + GUITEXTFIELD_L(2)
							maxx = (lx+w) - GUITEXTFIELD_R(2)
							While (x+GUITEXTFIELD_BG(2)) < maxx
								CopyRect GUITEXTFIELD_BG(0),GUITEXTFIELD_BG(1),GUITEXTFIELD_BG(2),GUITEXTFIELD_BG(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
								x = x +  GUITEXTFIELD_BG(2)
							Wend
							CopyRect GUITEXTFIELD_BG(0),GUITEXTFIELD_BG(1),maxx-x,GUITEXTFIELD_BG(3), x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
							
			; PASSWORD OR TEXT?
							Local t$ = Gadget\caption$ : If Gadget\password = True Then t$ = "" : For i = 1 To Len(Gadget\caption$) : t$ = t$ + "*" : Next
							
			; CALCULATE LEFT TEXT OFFSET USING
			; CURRENT CURSOR POSITION
							Gadget\first_char_pos = 1
							x = lx + GUITEXTFIELD_L(2)
							While x + SC_GetLineWidth( Mid(t$, Gadget\first_char_pos, (Gadget\cursorpos+5)-Gadget\first_char_pos) ) > maxx
								Gadget\first_char_pos = Gadget\first_char_pos + 1
							Wend
							
			; WRITE CHARS
							x = lx + GUITEXTFIELD_L(2)
							y = ly + GUITEXTFIELD_BG(3)/2 - GUI_Font2\line_height/2
							For i = Gadget\first_char_pos To Len(t$)
								j = Asc(Mid(t$, i, 1))
				; TEXT TOO LONG? EXIT!
								If (x+GUI_Font2\widths[j]) > maxx Then Exit
				; PRINT CHAR?
								If j <> 32 And j <> 13 Then
					; GADGET ENABLED / DISABLED?
									If Gadget\disabled = False Then
										SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_TEXTFIELDCOLOR(0),GUI_TEXTFIELDCOLOR(1),GUI_TEXTFIELDCOLOR(2)
									Else
										SC_CopyRect GUI_Font2\xpos[j],GUI_Font2\ypos[j],GUI_Font2\widths[j],GUI_Font2\heights[j], x,y,     TextureBuffer(GUI_TexFont2), TextureBuffer(Win\Tex), GUI_DISABLEDTEXTCOLOR(0),GUI_DISABLEDTEXTCOLOR(1),GUI_DISABLEDTEXTCOLOR(2)
									End If
								End If
				; POSITION
								x = x + GUI_Font2\widths[j]
							Next
							
			; TEXTFIELD IS ACTIVE?
							If Handle(Gadget) = GUI_TextGadget Then
				; GET CURSOR X-COORD
								Local cursorx% = lx + GUITEXTFIELD_L(2)
								x = lx + GUITEXTFIELD_L(2)
								For i = Gadget\first_char_pos To Len(t$)
									If Gadget\cursorpos = i Then cursorx = x : Exit
									x = x + GUI_Font2\widths[Asc(Mid(t$,i,1))]
								Next
				; CURSOR AT END OF TEXT?
								If Gadget\cursorpos > Len(t$) Then cursorx = x
								
				; DRAW CURSOR?
								If Int(Sin(MilliSecs())*10) > 0 Then
									Color GUI_TEXTFIELDCOLOR(0),GUI_TEXTFIELDCOLOR(1),GUI_TEXTFIELDCOLOR(2)
									Rect  cursorx-1,y+1,2,GUI_Font2\line_height-2, True
								End If
							End If
							
						Case GUI_IMAGE ; -------------------------------
							Tex = Object.SC_Texture(Gadget\Res)
			; MASKED?
							If Gadget\value3 = True Then
				; REDRAW WINDOW BACKGROUND BEHIND IMAGE
								SC_EraseGadget Gadget
								If Tex <> Null Then ; SC TEXTURE
									SC_CopyRect Int(Gadget\value),Int(Gadget\value2),w,h, x,y, TextureBuffer(Tex\Texture), TextureBuffer(Win\Tex)
								Else ; BLITZ IMAGE
									SC_CopyRect Int(Gadget\value),Int(Gadget\value2),w,h, x,y, ImageBuffer(Gadget\Res), TextureBuffer(Win\Tex)
								End If
							Else
								If Tex <> Null Then 
									CopyRect Int(Gadget\value),Int(Gadget\value2),w,h, x,y, TextureBuffer(Tex\Texture), TextureBuffer(Win\Tex)
								Else
									CopyRect Int(Gadget\value),Int(Gadget\value2),w,h, x,y, ImageBuffer(Gadget\Res), TextureBuffer(Win\Tex)
								End If
							End If		
			; BORDER?
							If Gadget\border = True Then SC_DrawGadgetBorder Gadget
					End Select
					
					SetBuffer Buffer
					
End Function


;---------------------------------------------------
; PRIVATE: CHECK GADGETS OF A WINDOW FOR MOUSE EVENTS
;          AND DO REGARDING ACTIONS
;---------------------------------------------------
Function SC_CheckGadgets%(Win.TGUI_Window, action$)
	
	Local i%, gx%, gy%, hit%, Gadget.TGUI_Gadget, Modal.TGUI_ModalWins
	
	
	If Win = Null Return
		Local x% = GUI_GetMouseX(Win\Img,False)
		Local y% = GUI_GetMouseY(Win\Img,False)
		
	; LOOP THROUGH WINDOW'S GADGETS
		For i = 0 To GUI_MAXGADGETS
			Gadget = Object.TGUI_Gadget(Win\Gadgets[i])
			If Gadget <> Null Then
				If Gadget\interactive = True And Gadget\hidden = False And Gadget\disabled = False Then
					gx = Gadget\x + Win\innerx
					gy = Gadget\y + Win\innery
					
				; HIT GADGET?
					If Gadget\typ = GUI_CLOSEBUTTON Then
						hit = SC_PointInRect(x,y, Gadget\x,Gadget\y,Gadget\actualwidth,Gadget\h)
					Else
						hit = SC_PointInRect(x,y, gx,gy,Gadget\actualwidth,Gadget\h)
					End If
					
					Select action$
							
						Case "MOUSEHIT" ; --------------
							If hit = True Then
					; GADGET ACTION?
								Select Gadget\typ
									Case GUI_BUTTON      Gadget\pressed  = True : ChannelVolume PlaySound(GUISND_ButtonD), GUI_volume
									Case GUI_COLORPICKER GUI_DragGadget  = Handle(Gadget)
									Case GUI_IMAGEBUTTON Gadget\pressed  = True : ChannelVolume PlaySound(GUISND_ButtonD), GUI_volume
									Case GUI_CHECKBUTTON Gadget\value    = Not Gadget\value : GUI_ClickedGadget = Handle(Gadget) : ChannelVolume PlaySound(GUISND_ButtonD), GUI_volume
									Case GUI_CLOSEBUTTON Gadget\pressed  = True : ChannelVolume PlaySound(GUISND_ButtonD), GUI_volume
									Case GUI_CHECKBOX    Gadget\value    = Not Gadget\value : GUI_ClickedGadget = Handle(Gadget) : ChannelVolume PlaySound(GUISND_Check), GUI_volume
									Case GUI_RADIOBOX    If Gadget\value = False Then Gadget\value = True : GUI_ClickedGadget = Handle(Gadget) : SC_UncheckRadioGroup Gadget : ChannelVolume PlaySound(GUISND_Radio), GUI_volume
									Case GUI_SLIDERH     GUI_DragGadget  = Handle(Gadget)
									Case GUI_SLIDERV     GUI_DragGadget  = Handle(Gadget)
									Case GUI_TEXTFIELD
										Local PrevGadget% = GUI_TextGadget
										If GUI_TextGadget <>  Handle(Gadget) Then FlushKeys
										GUI_TextGadget      = Handle(Gadget)
										GUI_ClickedGadget   = Handle(Gadget)
										SC_SetCursorPosition Gadget,x,y
								     ; PREVIOUSLY SELECTED GADGET WAS A TEXT FIELD? DELETE CURSOR THERE!
										If PrevGadget <> 0 And PrevGadget <> GUI_TextGadget Then SC_DrawGadget Object.TGUI_Gadget(PrevGadget)
								End Select
								If Gadget\typ <> GUI_COLORPICKER SC_DrawGadget Gadget
									Return True
								End If
								
							Case "MOUSEUP" ; ---------------
								If Gadget\pressed = True Then
									Gadget\pressed = False
									SC_DrawGadget Gadget
					; GADGET ACTION?
									If hit = True Then
										Select Gadget\typ
											Case GUI_BUTTON      GUI_ClickedGadget = Handle(Gadget) : ChannelVolume PlaySound(GUISND_ButtonU), GUI_volume  
											Case GUI_IMAGEBUTTON GUI_ClickedGadget = Handle(Gadget) : ChannelVolume PlaySound(GUISND_ButtonU), GUI_volume  
											Case GUI_CLOSEBUTTON Win\closeflag = True               : ChannelVolume PlaySound(GUISND_ButtonU), GUI_volume
										End Select
										
						; IS MODAL WINDOW BUTTON?
										If Win\ModalID <> 0 Then
											Modal = Object.TGUI_ModalWins(Win\ModalID)
											If Modal <> Null Then
												If Handle(Gadget) = Modal\Button1 Then Modal\confirmed$ = Gadget\caption$
												If Handle(Gadget) = Modal\Button2 Then Modal\confirmed$ = Gadget\caption$
								; NOTIFY WINDOW? REMOVE!
												If Modal\Button2 = 0 Delete Modal : GUI_RemoveWindow Win\Img : Exit
												End If
											End If
										End If
									End If
									
							End Select
							
						End If ; GADGET IS INTERACTIVE
					End If ; GADGET EXISTS
				Next ; LOOP THROUGH GADGETS
				
				Return False
				
End Function


;---------------------------------------------------
; PRIVATE: GET IMAGE HANDLE, RETURN WINDOW TYPE
;---------------------------------------------------
Function  SC_GetWindowObject.TGUI_Window(Img%)
	Local Win.TGUI_Window
	For   Win.TGUI_Window = Each TGUI_Window
		If Win\Img = Img Then Return Win : Exit
	Next
	Return Null
End Function


;---------------------------------------------------
; PRIVATE: WRAP TEXT
;---------------------------------------------------
Function SC_WrapGUIText$(txt$, max_width%)
	Local i%, t$, Font.SC_Font = New SC_Font
	For i = 0 To 255 : Font\char_widths[i] = GUI_Font2\widths[i] : Next
	t$    = SC_WordWrap$ (Handle(Font), txt$, max_width)
	Delete Font
	Return t$
End Function


;---------------------------------------------------
; PRIVATE: GET LINE WIDTH (USE WITH WRAPPED TEXTS)
;          RETURNS -1 IF LINE DOES NOT EXIST
;---------------------------------------------------
Function SC_GetLineWidth%(txt$,linenum%=1,titleFont%=False)
	
	Local i%, w%, curr% = 1
	For i = 1 To Len(txt$)
		
		; NEW LINE?
		If Mid(txt$,i,1) = Chr(13) Then 
			curr = curr + 1
			If curr = linenum And Mid(txt$,i+1,1) = Chr(13) Then Return 0
		; TEXT LINE? RETURN WIDTH
		Else If curr = linenum Then
			While Mid(txt$,i,1) <> Chr(13) And i <= Len(txt$)
				If titleFont = True Then
					w = w + GUI_Font1\widths[Asc(Mid(txt$,i,1))]
				Else
					w = w + GUI_Font2\widths[Asc(Mid(txt$,i,1))]
				End If
				i = i + 1
			Wend
			Return w
		End If
	Next
	Return -1
	
End Function


;---------------------------------------------------
; PRIVATE: FIND & SET CURSOR POSITION WIHTIN TEXTFIELD
;          BY XY-MOUSECOORDS
;---------------------------------------------------
Function SC_SetCursorPosition(Gadget.TGUI_Gadget,x%,y%)
	
	Local minx%, xpos%, i%, w%, t$
	
	Select Gadget\typ
		Case GUI_TEXTFIELD	
			minx = Gadget\x + GUITEXTFIELD_L(2)
			xpos = minx
			
			; PASSWORD OR TEXT?
			t$ = Gadget\caption$ : If Gadget\password = True Then t$ = "" : For i = 1 To Len(Gadget\caption$) : t$ = t$ + "*" : Next
			
			; CURSOR AT BEGINNING?
			If Len(t$) > 0 Then
				If x < minx + GUI_Font2\widths[Asc(Mid(t$,Gadget\first_char_pos,1))] Then Gadget\cursorpos = Gadget\first_char_pos : Return
			; FIELD EMPTY
			Else
				Gadget\cursorpos = Gadget\first_char_pos : Return
			End If
			
			For i = Gadget\first_char_pos To Len(t$)
				; CHAR WIDTH
				w = GUI_Font2\widths[Asc(Mid(t$,i,1))]
				; AFTER CURRENT CHAR?
				If x > xpos + w Then Gadget\cursorpos = i+1
				xpos = xpos + w
			Next
	End Select
	
End Function


;---------------------------------------------------
; PRIVATE: RETURN A FREE GADGET SLOT
;---------------------------------------------------
Function SC_FindGadgetSlot%(Win.TGUI_Window)
	Local i%
	For i = 0 To GUI_MAXGADGETS
		If Win\Gadgets[i] = 0 Then Exit
	Next
	Return i
End Function


;---------------------------------------------------
; PRIVATE: UNCHECK OTHER RADIOBUTTONS OF SAME GROUP
;    NOTE: GADGET WILL BE REDRAWN IF IT'S VALUE HAS
;          BEEN CHANGED
;---------------------------------------------------
Function SC_UncheckRadioGroup(CheckedGadget.TGUI_Gadget)
	Local Win.TGUI_Window = Object.TGUI_Window(CheckedGadget\Win): If Win = Null Then RuntimeError SC_BreakText("SC_UncheckRadioGroup||The specified window does not exist.",50) 
	Local i%, Obj.TGUI_Gadget
	
	For i = 0 To GUI_MAXGADGETS
		Obj = Object.TGUI_Gadget(Win\Gadgets[i])
		If Obj <> Null And Obj <> CheckedGadget Then
			If Obj\typ = GUI_RADIOBOX And Obj\radiogroup$ = CheckedGadget\radiogroup$ And Obj\value = True Then Obj\value = False : SC_DrawGadget Obj
		End If
	Next
End Function


;---------------------------------------------------
; PRIVATE: DRAW TILED WINDOW BACKGROUND ON GADGET'S POSITION
;          TO CLEAR THIS GADGET BEFORE REDRAWING
;          BUFFER MUST BE SET TO WINDOW'S TEXTURE BEFORE
;---------------------------------------------------
Function SC_EraseGadget(Gadget.TGUI_Gadget)
	
	Local Win.TGUI_Window = Object.TGUI_Window(Gadget\Win): If Win = Null Then RuntimeError SC_BreakText("SC_EraseGadget||The specified window does not exist.",50) 
	Local tx%,ty%,tw%,th%
	Local x%    = Gadget\x + Win\innerx
	Local y%    = Gadget\y + Win\innery
	Local maxx% = x + Gadget\actualwidth
	Local maxy% = y + Gadget\h
	
	While y < maxy
		tx = x Mod GUIBG(2)
		ty = (y-Win\innery) Mod GUIBG(3)
		tw = GUIBG(2)-tx : If tw > maxx-x Then tw = maxx-x
		th = GUIBG(3)-ty : If th > maxy-y Then th = maxy-y
		CopyRect GUIBG(0)+tx,GUIBG(1)+ty,tw,th,x,y, TextureBuffer(GUI_Tex), TextureBuffer(Win\Tex)
		x = x + tw : If x >= maxx Then x = (Gadget\x+Win\innerx) : y = y + th
	Wend 
	
End Function


;---------------------------------------------------
; PRIVATE: DRAW A BORDER AROUND A GADGET
;          BUFFER MUST BE SET TO WINDOW'S TEXTURE BEFORE
;---------------------------------------------------
Function SC_DrawGadgetBorder(Gadget.TGUI_Gadget)
	
	Local Win.TGUI_Window = Object.TGUI_Window(Gadget\Win) : If Win = Null Then RuntimeError SC_BreakText("SC_DrawGadgetBorder||The specified window does not exist.",50) 
	Local x% = Gadget\x + Win\innerx
	Local y% = Gadget\y + Win\innery
	Local w% = Gadget\w
	Local h% = Gadget\h
	
	If Gadget\disabled = True Then
		; HIGHLIGHT FRAME
		Color GUI_BEVELCOLORS(0,0),GUI_BEVELCOLORS(0,1),GUI_BEVELCOLORS(0,2)
		Rect x,y,w,h,0 : Rect x+1,y+1,w-2,h-2,0
		
		; DARK FRAME
		Color GUI_BEVELCOLORS(1,0),GUI_BEVELCOLORS(1,1),GUI_BEVELCOLORS(1,2)
		Rect x,y,w-1,h-1,0
	Else
		Color GUI_FONTCOLOR(0),GUI_FONTCOLOR(1),GUI_FONTCOLOR(2)
		Rect x,y,w,h,0
	End If
	
End Function


;---------------------------------------------------
; PRIVATE: COLOR PICKER HAS BEEN CLICKED
;---------------------------------------------------
Function SC_ColorPickerClicked (Win.TGUI_Window,Gadget.TGUI_Gadget,x%,y%)
	
	Local Buffer% = GraphicsBuffer() : SetBuffer TextureBuffer(Win\Tex)
	Local RGB%,R%,G%,B%,R1%,G1%,B1%,x1%,y1%,y2%
	Local gx% = Gadget\x + Win\innerx
	Local gy% = Gadget\y + Win\innery
	Local w%  = Gadget\w
	Local h%  = Gadget\h
	Local h2% = h-18 ; GRADIENT BAR HEIGHT
	
	; CLICKED IN PALETTE BOX?
	If x < w-18 Then
		; REMOVE PREVIOUS MARKER
		x1 = Gadget\value2-4 : If x1 < 0 Then x1 = 0
		y1 = Gadget\value3-4 : If y1 < 0 Then y1 = 0
		SC_CopyRect x1,y1,9,9,gx+x1,gy+y1,ImageBuffer(Gadget\Res),TextureBuffer(Win\Tex)  
		
		; GET NEW MOUSE COORDS
		Gadget\value2 = x
		Gadget\value3 = y
		If Gadget\value2 < 5 Then Gadget\value2 = 5 Else If Gadget\value2 > (w-24) Then Gadget\value2 = w-24
		If Gadget\value3 < 5 Then Gadget\value3 = 5 Else If Gadget\value3 > (h-6)  Then Gadget\value3 = h-6
		
		; DRAW CURSOR
		Color   1,  1,  1 : Rect gx+(Gadget\value2-3),gy+(Gadget\value3-3),8,8,False
		Color 255,255,255 : Rect gx+(Gadget\value2-4),gy+(Gadget\value3-4),8,8,False
		
	; CLICKED IN GRADIENT BOX?
	Else If x > w-16 And y < h2 Then
		Gadget\value4 = y
		If Gadget\value4 < 3    Then Gadget\value4 = 3
		If Gadget\value4 > h2-4 Then Gadget\value4 = h2-4
	End If
	
	; GET PICKED COLOR
	RGB = ReadPixel(Gadget\value2,Gadget\value3,ImageBuffer(Gadget\Res))
	
	; DRAW GRADIENT BAR
	R1  =(RGB And $FF0000)/$10000
	G1  =(RGB And $FF00)/$100
	B1  = RGB And $FF
	y1  = gy+1
	y2  =(gy+h2)-2
	Local perc#
	Local colorPercent# = 255.0 / 100.0
	Local halfHeight#   = (y2-y1)/2
	Local halfWay#      = y1 + halfHeight
	Local wayPercent#   = halfHeight / 100.0
	LockBuffer TextureBuffer(Win\Tex)
	For j = y1 To y2
		If j < halfWay Then
			perc = 100.0 - (j-y1) / wayPercent
			R = R1 + perc * (255-R1)/100.0
			G = G1 + perc * (255-G1)/100.0
			B = B1 + perc * (255-B1)/100.0
		Else
			perc = 100.0 - (j-halfWay) / wayPercent
			R = perc * (R1/100.0)
			G = perc * (G1/100.0)
			B = perc * (B1/100.0)
		End If
		;If (j-gy) <    5 Then R = 255 : G = 255 : B = 255
		;If (j-gy) > h2-5 Then R = 0 : G = 0 : B = 0
		For i = gx+(w-15) To gx+(w-2) : WritePixelFast i,j,255*$1000000+R*$10000+G*$100+B, TextureBuffer(Win\Tex) : Next
		
		; SET GADGET VALUE?
		If (j-gy) = Gadget\value4 Then Gadget\value = 255*$1000000+R*$10000+G*$100+B
	Next
	UnlockBuffer TextureBuffer(Win\Tex)
	
	; DRAW GRADIENT CURSOR
	Color   1,  1,  1 : Rect gx+(w-15),gy+(Gadget\value4-1),14,4,False
	Color 255,255,255 : Rect gx+(w-15),gy+(Gadget\value4-2),14,4,False
	
	; COLOR PREVIEW
	For j = h-15 To h-2
		For i = w-15 To w-2
			WritePixelFast gx+i,gy+j,Gadget\value, TextureBuffer(Win\Tex)
			
		Next
		
	Next
	
	SetBuffer Buffer
	
End Function


;---------------------------------------------------
; PRIVATE: CHECK IF A POINT IS INSIDE A RECT
;---------------------------------------------------
Function SC_PointInRect%(x%,y%, x1%,y1%,w%,h%)
	
	If x < x1 Or x > x1+w Return False
		If y < y1 Or y > y1+h Return False
			Return True
			
End Function


; --------------------------------------------------------------
; FUNCTION: COPY RECT (EXCLUDING BLACK BACKGROUND PIXELS)
; --------------------------------------------------------------
Function SC_CopyRect(x1%,y1%,w%,h%,x3%,y3%,Buff_Src%,Buff_Dest%,  R%=0,G%=0,B%=0, greyout%=False)
	
	Local x%, y%, rgb%
	Local xx% = x3
	Local yy% = y3
	Local x2% = x1 + (w-1)
	Local y2% = y1 + (h-1)
	
	LockBuffer Buff_Src : LockBuffer Buff_Dest
	
	If greyout = False Then
		For y = y1 To y2
			xx = x3
			For x = x1 To x2
				rgb = ReadPixelFast(x,y,Buff_Src)
				If rgb <> 0 Then
					If R+G+B > 0 Then rgb = 255*$1000000 + R*$10000 + G*$100 + B
					WritePixelFast(xx, yy, rgb, Buff_Dest)
				End If
				xx = xx + 1
			Next
			yy = yy + 1
		Next
	; GREY-OUT (DISABLED IMAGE)
	Else
		Local stp%
		For y = y1 To y2
			xx = x3 : stp = Not stp
			For x = x1 To x2
				stp = Not stp
				rgb = ReadPixelFast(x,y,Buff_Src)
				If rgb <> 0 And stp = 1 Then
					R   =(rgb And $FF0000)/$10000
					G   =(rgb And $FF00)/$100
					B   = rgb And $FF
					R = ((R + G + B)/3); + 46
					If R > 255 Then r = 255
					rgb = 255*$1000000 + R*$10000 + R*$100 + R
					WritePixelFast(xx, yy, rgb, Buff_Dest)
				End If
				xx = xx + 1
			Next
			yy = yy + 1
		Next
	End If
	
	
	UnlockBuffer Buff_Dest : UnlockBuffer Buff_Src
	
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: KEEP WINDOW TYPES SORTED BY ZORDER 
; ------------------------------------------------------------------------
Function SC_SortWindows()
	
	Local Win.TGUI_Window, NextWin.TGUI_Window, Win1.TGUI_Window, Win2.TGUI_Window
	Local temp% ; MUST BE SAME TYPE AS THE SORT FIELD
	
	If GUI_CountWindows() > 1 Then
		NextWin = After First TGUI_Window
		While NextWin <> Null
			Win     = NextWin
			NextWin = After Win
			Win1    = Win
			temp    = HUD_GetLayerOrder(Win\Lyr)
			Repeat
				Win2    = Before Win1
				If Win2 = Null Then Exit
				If temp<= HUD_GetLayerOrder(Win2\Lyr) Then Exit
				Win1    = Win2
			Forever
			Win2 = Win : Insert Win2 Before Win1
		Wend
	End If
	
	; DIM NON-ACTIVE WINDOWS
	For Win = Each TGUI_Window 
		If Win <> First TGUI_Window And Win\dimm = True Then
		HUD_SetObjectColor Win\Img,225,225,225
	Else
		HUD_SetObjectColor Win\Img,255,255,255
	End If
Next

End Function


;---------------------------------------------------
; PRIVATE: EXTRACT SECTIONS OF A STRING
; SECTION = FRAGMENT TO RETURN (0 - ...) -1 FOR LAST
;---------------------------------------------------
Function SC_StrExplode$(txt$, divider$, section%)
	
	Local i%, char$, sec%, tmp$, sections%
	
	; COUNT FRAGMENTS
	For i = 1 To Len(txt$)
		If Mid(txt$,i,1) = divider$ Then sections = sections + 1
	Next
	
	; RETURN LAST FRAGMENT?
	If section = -1 Then section = sections
	For i% = 1 To Len(txt$)
		char$    = Mid(txt$,i,1)
		If char$ = divider$ Then sec = sec + 1 : i = i + 1 : char$ = Mid(txt$,i,1)
		If sec   = section  Then tmp$ = tmp$ + char$
	Next
	Return tmp$
	
End Function

;~IDEal Editor Parameters:
;~B#A#A1#C2#DA#E2#102#113#282#283#2C6#2EA#2EE#2F2#301#332#348#351#357#362#368
;~B#372#37B#385#38F#398#3A2#3B1#3BA#3C8#3CB#3DD#3EC#3F3#40B#41E#438#442#455#472#48D
;~B#49D#4A0#4A8#4BE#4C7#4D9#4E2#4EA#4F5#4FF#513#522#52B#53F#543#552#557#55B#56C#56D
;~B#576#588#594#5B3#5BD#5CC#5E4#5FB#61D#642#65A#676#68C#6AA#6C8#6E5#700#712#72A#73A
;~B#73D#754#760#786#793#79A#7A3#7A4#7A5#7A8#7B5#7B6#7B7#7D5#7E1#7E2#7E3#7EB#7ED#7FE
;~B#800#81C#825#826#831#833#834#838#843#882#8AA#8B4#8BE#8C7#8D4#8DA#900#911#912#945
;~B#946#99D#99E#9BF#9C0#A08#A36#A6A#A6B#A79#A80#A81#A8D#A93#A94#A97#A9B#AB8#AD1#AD4
;~B#AE0#AEA#AEB#AEC#AED#AEF#AF1#AF2#AF7#B03#B0F#B26#B2A#B2E#B47#B50#B52#B5E#B6E#B70
;~B#B8A#BA4#BA6#BCC#BE8#C01#C0D#C25#C3A#C3F#C44#C5E#C66#C69#C82
;~C#Blitz3D