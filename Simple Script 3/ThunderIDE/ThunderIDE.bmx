SuperStrict

Framework wx.wxApp
Import wx.wxScintilla
Import wx.wxFrame


Global commonPrefs:CommonInfo = New CommonInfo


New MyApp.Run()

Type MyApp Extends wxApp

	Field frame:AppFrame

	Method OnInit:Int()
	
		wxInitAllImageHandlers()

		' Create application frame
		frame = AppFrame(New AppFrame.Create(,,"wxScintilla Sample"))
		
		' open application frame
		frame.Layout()
		frame.Show(True)
		SetTopWindow(frame)
	
		Return True
	
	End Method

End Type


Type AppFrame Extends wxFrame


	' edit object
	Field mEdit:Edit
	Field menuBar:wxMenuBar
	
	Method OnInit()

		' Create menu
		menuBar = New wxMenuBar.Create()
		CreateMenu()
		
		' open First page
		mEdit = Edit(New Edit.Create(Self, -1))
		mEdit.SetFocus()

	End Method
	
	Method CreateMenu()
	End Method

	Function OnClose (event:wxEvent)
	End Function
	
	Function OnAbout (event:wxEvent)
	End Function
	
	Function OnExit (event:wxEvent)
	End Function
	
	Function OnTimerEvent (event:wxEvent)
	End Function
	
	' file
	Function OnFileNew (event:wxEvent)
	End Function
	
	Function OnFileNewFrame (event:wxEvent)
	End Function
	
	Function OnFileOpen (event:wxEvent)
	End Function
	
	Function OnFileOpenFrame (event:wxEvent)
	End Function
	
	Function OnFileSave (event:wxEvent)
	End Function
	
	Function OnFileSaveAs (event:wxEvent)
	End Function
	
	Function OnFileClose (event:wxEvent)
	End Function
	
	' properties
	Function OnProperties (event:wxEvent)
	End Function
	
	' Print
	Function OnPrintSetup (event:wxEvent)
	End Function
	
	Function OnPrintPreview (event:wxEvent)
	End Function
	
	Function OnPrint (event:wxEvent)
	End Function
	
	' edit events
	Function OnEdit (event:wxEvent)
	End Function



End Type

Type Edit Extends wxScintilla

	' file
	Field filename:String
	
	' lanugage properties
	'LanguageInfo Const* m_language;
	
	' margin variables
	Field lineNrID:Int
	Field lineNrMargin:Int
	Field foldingID:Int
	Field foldingMargin:Int
	Field dividerID:Int


	Method OnInit()
	
		filename = ""
		'm_language = Null;
		
		lineNrID = 0
		lineNrMargin = TextWidth(wxSCI_STYLE_LINENUMBER, "_999999")
		foldingID = 1
		foldingMargin = 16
		dividerID = 2

		' Default font For all styles
		SetViewEOL(commonPrefs.displayEOLEnable)
		SetIndentationGuides(commonPrefs.indentGuideEnable)
		
		If commonPrefs.lineNumberEnable Then
			SetMarginWidth(lineNrID, lineNrMargin)
		Else
			SetMarginWidth(lineNrID, 0)
		End If
		
		If commonPrefs.longLineOnEnable Then
			SetEdgeMode (wxSCI_EDGE_LINE)
		Else
			SetEdgeMode(wxSCI_EDGE_NONE)
		End If
		
		If commonPrefs.whiteSpaceEnable Then
			SetViewWhiteSpace(wxSCI_WS_VISIBLEALWAYS)
		Else
			SetViewWhiteSpace(wxSCI_WS_INVISIBLE)
		End If
		SetOvertype(commonPrefs.overTypeInitial)
		SetReadOnly(commonPrefs.readOnlyInitial)
		If commonPrefs.wrapModeInitial Then
			SetWrapMode(wxSCI_WRAP_WORD)
		Else
			SetWrapMode(wxSCI_WRAP_NONE)
		End If
		
		Local font:wxFont = New wxFont.CreateWithAttribs(10, wxTELETYPE, wxNORMAL, wxNORMAL)
		
		StyleSetFontFont(wxSCI_STYLE_DEFAULT, font)
		StyleSetForeground(wxSCI_STYLE_DEFAULT, New wxColour.CreateNamedColour("BLACK"))
		StyleSetBackground(wxSCI_STYLE_DEFAULT, New wxColour.CreateNamedColour("WHITE"))
		StyleSetForeground(wxSCI_STYLE_LINENUMBER, New wxColour.CreateNamedColour("DARK GREY"))
		StyleSetBackground(wxSCI_STYLE_LINENUMBER, New wxColour.CreateNamedColour("WHITE"))
		StyleSetForeground(wxSCI_STYLE_INDENTGUIDE, New wxColour.CreateNamedColour("DARK GREY"))
		'InitializePrefs(DEFAULT_LANGUAGE);

		' set visibility
		SetVisiblePolicy(wxSCI_VISIBLE_STRICT | wxSCI_VISIBLE_SLOP, 1)
		SetXCaretPolicy(wxSCI_CARET_EVEN | wxSCI_VISIBLE_STRICT | wxSCI_CARET_SLOP, 1)
		SetYCaretPolicy(wxSCI_CARET_EVEN | wxSCI_VISIBLE_STRICT | wxSCI_CARET_SLOP, 1)
		
		' markers
		MarkerDefine(wxSCI_MARKNUM_FOLDER, wxSCI_MARK_BOXPLUS)
		MarkerSetBackground(wxSCI_MARKNUM_FOLDER, New wxColour.CreateNamedColour("BLACK"))
		MarkerSetForeground(wxSCI_MARKNUM_FOLDER, New wxColour.CreateNamedColour("WHITE"))
		MarkerDefine(wxSCI_MARKNUM_FOLDEROPEN, wxSCI_MARK_BOXMINUS)
		MarkerSetBackground(wxSCI_MARKNUM_FOLDEROPEN, New wxColour.CreateNamedColour("BLACK"))
		MarkerSetForeground(wxSCI_MARKNUM_FOLDEROPEN, New wxColour.CreateNamedColour("WHITE"))
		MarkerDefine(wxSCI_MARKNUM_FOLDERSUB, wxSCI_MARK_EMPTY)
		MarkerDefine(wxSCI_MARKNUM_FOLDEREND, wxSCI_MARK_SHORTARROW)
		MarkerDefine(wxSCI_MARKNUM_FOLDEROPENMID, wxSCI_MARK_ARROWDOWN)
		MarkerDefine(wxSCI_MARKNUM_FOLDERMIDTAIL, wxSCI_MARK_EMPTY)
		MarkerDefine(wxSCI_MARKNUM_FOLDERTAIL, wxSCI_MARK_EMPTY)

		' miscelaneous
		UsePopUp(0)
		SetLayoutCache(wxSCI_CACHE_PAGE)
		SetBufferedDraw(1)

	End Method
End Type


Type CommonInfo
    ' editor functionality prefs
    Field syntaxEnable:Int = True
    Field foldEnable:Int = True
    Field indentEnable:Int = True
    ' display defaults prefs
    Field readOnlyInitial:Int = False
    Field overTypeInitial:Int = False
    Field wrapModeInitial:Int = False
    Field displayEOLEnable:Int = False
    Field indentGuideEnable:Int = False
    Field lineNumberEnable:Int = True
    Field longLineOnEnable:Int = False
    Field whiteSpaceEnable:Int = False
End Type

Type LanguageInfo
    Field name:String
    Field filepattern:String
    Field lexer:Int
    Field styles:TStyles[]
    Field folds:Int
End Type

Type TStyles
	Field kind:Int
	Field words:String
End Type