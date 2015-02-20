unit
module GUI
    import
    % Constants
	WidgetGlobals in "guiclassMOD/WidgetGlobals.tu",
	WidgetModule in "guiclassMOD/WidgetModule.tu",

    % Widgets
	GenericWidgetClass in "guiclassMOD/GenericWidgetClass.tu",

    % Active Widgets
	GenericActiveWidgetClass in "guiclassMOD/GenericActiveWidgetClass.tu",
	GenericLabelledWidgetClass in "guiclassMOD/GenericLabelledWidgetClass.tu",
	ButtonClass in "guiclassMOD/ButtonClass.tu",
	CheckBoxClass in "guiclassMOD/CheckBoxClass.tu",
	GenericRadioButtonClass in "guiclassMOD/GenericRadioButtonClass.tu",
	RadioButtonClass in "guiclassMOD/RadioButtonClass.tu",
	PictureButtonClass in "guiclassMOD/PictureButtonClass.tu",
	PictureRadioButtonClass in "guiclassMOD/PictureRadioButtonClass.tu",
	GenericSliderClass in "guiclassMOD/GenericSliderClass.tu",
	VerticalSliderClass in "guiclassMOD/VerticalSliderClass.tu",
	HorizontalSliderClass in "guiclassMOD/HorizontalSliderClass.tu",
	GenericScrollBarClass in "guiclassMOD/GenericScrollBarClass.tu",
	VerticalScrollBarClass in "guiclassMOD/VerticalScrollBarClass.tu",
	HorizontalScrollBarClass in "guiclassMOD/HorizontalScrollBarClass.tu",
	CanvasClass in "guiclassMOD/CanvasClass.tu",
	TextFieldClass in "guiclassMOD/TextFieldClass.tu",
	TextBoxClass in "guiclassMOD/TextBoxClass.tu",

    %TextBoxBodyClass in "guiclassMOD/TextBoxBodyClass.tu", %(RCC)

    % Passive Widgets
	LineClass in "guiclassMOD/LineClass.tu",
	FrameClass in "guiclassMOD/FrameClass.tu",
	LabelledFrameClass in "guiclassMOD/LabelledFrameClass.tu",
	LabelClass in "guiclassMOD/LabelClass.tu",
	PictureClass in "guiclassMOD/PictureClass.tu",

    % Menus
	MenuBarClass in "guiclassMOD/MenuBarClass.tu",
	MenuClass in "guiclassMOD/MenuClass.tu",
	MenuItemClass in "guiclassMOD/MenuItemClass.tu"

    export
    % Create Active Widgets
	CreateButton, CreateButtonFull,
	CreateCheckBox, CreateCheckBoxFull,
	CreateRadioButton, CreateRadioButtonFull,
	CreatePictureButton, CreatePictureButtonFull,
	CreatePictureRadioButton, CreatePictureRadioButtonFull,
	CreateHorizontalSlider, CreateVerticalSlider,
	CreateHorizontalScrollBar, CreateVerticalScrollBar,
	CreateHorizontalScrollBarFull, CreateVerticalScrollBarFull,
	CreateCanvas, CreateCanvasFull,
	CreateTextField, CreateTextFieldFull,
	CreateTextBox, CreateTextBoxFull, CreateTextBoxChoice,

    % Create Passive Widgets
	CreateLine, CreateFrame, CreateLabelledFrame,
	CreateLabel, CreateLabelFull, CreatePicture,

    % Create Menus
	CreateMenu, CreateMenuItem, CreateMenuItemFull,

    % General GUI Commands
	ProcessEvent, Quit, ResetQuit, Refresh, SetBackgroundColour,
	SetBackgroundColor, SetNullEventHandler, SetKeyEventHandler,
	SetMouseEventHandler, SetDisplayWhenCreated, CloseWindow,
	ShowWindow, HideWindow,
	GetScrollBarWidth, GetMenuBarHeight, GetVersion, GetBackgroundColour,
	GetBackgroundColor, SetDelayInProcess,

    % Commands for Events
	GetEventWidgetID, GetEventWindow, GetEventTime,

    % Commands for All Widgets
	Show, Hide, GetX, GetY, GetWidth, GetHeight, SetColor, SetColour,
	Dispose, SetPosition, SetSize, SetPositionAndSize,

    % Commands for Active Widgets
	Enable, Disable,

    % Commands for Labelled Widgets, Labels and Labelled Frames
	SetLabel,

    % Commands for Buttons
	SetDefault,

    % Commands for Check Boxes
	GetCheckBox, SetCheckBox,

    % Commands for Radio Buttons
	SelectRadio,

    % Commands for Sliders
	GetSliderValue, SetSliderValue, SetSliderMinMax, SetSliderSize,
	SetSliderReverse,

    % Commands for Scroll Bars
	SetScrollAmount,

    % Commands for Canvases
	DrawArc, DrawBox, DrawCls, DrawDot, DrawFill, DrawFillArc,
	DrawFillBox, DrawFillMapleLeaf, DrawFillOval, DrawFillPolygon,
	DrawFillStar, DrawLine, DrawMapleLeaf, DrawOval, DrawPolygon,
	DrawStar, DrawText, FontDraw, PicDraw, PicNew, PicScreenLoad,
	PicScreenSave, SetXOR,

    % Commands for Text Fields
	SetText, GetText, SetSelection, SetActive, SetEchoChar,

    % Commands for Text Boxes
	ClearText, AddText, AddLine, SetTopLine, SetSelectedLine, SetScrollOnAdd,

    % Commands for Menus
	ShowMenuBar, HideMenuBar,

    % Constants
	LEFT, CENTER, CENTRE, RIGHT, TOP, MIDDLE, BOTTOM, LINE, INDENT,
	EXDENT, ANY, INTEGER, REAL, NONE

    %RCC Exports
    %SelectLine

    %
    % Define exported constants
    %
    const LEFT := WidgetGlobals.LEFT
    const CENTER := WidgetGlobals.CENTRE
    const CENTRE := WidgetGlobals.CENTRE
    const RIGHT := WidgetGlobals.RIGHT
    const TOP := WidgetGlobals.TOP
    const MIDDLE := WidgetGlobals.MIDDLE
    const BOTTOM := WidgetGlobals.BOTTOM
    const LINE := WidgetGlobals.LINE
    const INDENT := WidgetGlobals.INDENT
    const EXDENT := WidgetGlobals.EXDENT

    const ANY := WidgetGlobals.ANY
    const INTEGER := WidgetGlobals.INTEGER
    const REAL := WidgetGlobals.REAL

    const NONE : char := '\0'

    %
    % Type Declarations
    %
    type WidgetNode :
	record
	    widget : ^GenericWidgetClass
	    id : int
	    next : ^WidgetNode
	end record

    %
    % Constant Declarations
    %
    % Widget ID Modifiers
    const LABEL_ID : int := 1000
    const BUTTON_ID : int := 2000
    const CHECKBOX_ID : int := 3000
    const RADIO_BUTTON_ID : int := 4000
    const LINE_ID := 5000
    const FRAME_ID := 6000
    const LABELLED_FRAME_ID := 7000
    const MENU_ID := 8000
    const MENU_ITEM_ID := 9000
    const HSLIDER_ID := 10000
    const VSLIDER_ID := 11000
    const HSCROLLBAR_ID := 12000
    const VSCROLLBAR_ID := 13000
    const PICTURE_ID := 14000
    const PICTURE_BUTTON_ID := 15000
    const PICTURE_RADIO_ID := 16000
    const CANVAS_ID := 17000
    const TEXT_FIELD_ID := 18000
    const TEXT_BOX_ID := 19000

    % Names of the widgets.  Must correspond to Widget ID Modifiers
    const widgetKind : array 1 .. * of string := init ("Label", "Button",
	"CheckBox", "Radio Button", "Line", "Frame", "Labelled Frame",
	"Menu", "Menu Item", "Horizontal Slider", "Vertical Slider",
	"Horizontal Scrollbar", "Vertical Scrollbar", "Picture",
	"Picture Button", "Picture Radio Button", "Canvas", "Text Field",
	"Text Box")

    % Miscellaneous constants


    %
    % Variable Declarations
    %
    var firstWidgetNode : ^WidgetNode := nil

    % The current ID being given out.
    var currentID : int := 0


    % Internal Procedures
    procedure AssertFailed (message : string)
	locate (1, 1)
	put message
	assert false
    end AssertFailed


    % Get the next ID number to return
    function GetNextID (kind : int) : int
	currentID += 1
	result kind + currentID
    end GetNextID


    % Return the pointer to the Widget object that has the specified 'id'.
    function FindWidget (id : int, procName : string) : ^GenericWidgetClass
	var widgetNode : ^WidgetNode := firstWidgetNode
	loop
	    exit when widgetNode = nil
	    if widgetNode -> id = id then
		result widgetNode -> widget
	    end if
	    widgetNode := widgetNode -> next
	end loop
	AssertFailed (procName + ": widget id number \"" +
	    intstr (id) + "\" not found")
	result nil
    end FindWidget


    % Wrong type of id
    procedure BadWidgetKind (id : int, className, routineName : string)
	AssertFailed (routineName + " : widget id number \"" +
	    intstr (id) + "\" must be a " + className + " but is a " +
	    widgetKind (id div 1000))
    end BadWidgetKind


    function AddWidget (widget : ^GenericWidgetClass, widgetKind : int) : int
	var widgetNode : ^WidgetNode

	% Create new WidgetNode
	new widgetNode
	widgetNode -> widget := widget
	widgetNode -> id := GetNextID (widgetKind)
	widgetNode -> next := firstWidgetNode
	firstWidgetNode := widgetNode

	% Set the user value of the widget to the id
	widget -> SetUserValue (widgetNode -> id)

	result widgetNode -> id
    end AddWidget


    procedure RemoveWidget (id : int)
	var prevNode : ^WidgetNode := nil
	var widgetNode : ^WidgetNode := firstWidgetNode
	var tempNode : ^WidgetNode := widgetNode
	% Remove the widgetNode from the linked list
	loop
	    exit when widgetNode = nil
	    if widgetNode -> id = id then
		if prevNode = nil then
		    firstWidgetNode := widgetNode -> next
		else
		    prevNode -> next := widgetNode -> next
		end if

		% Dispose of the widget and the widgetNode.
		widgetNode -> widget -> Dispose
		free widgetNode -> widget
		free widgetNode

		return
	    end if
	    prevNode := widgetNode
	    widgetNode := widgetNode -> next
	end loop
	AssertFailed ("Dispose: widget id number \"" +
	    intstr (id) + "\" not found")
    end RemoveWidget


    %
    % External Subprograms
    %

    %
    % Create Active Widgets
    %
    function CreateButton (x, y, width : int,
	    text : string, actionProc : procedure x ()) : int
	var b : ^ButtonClass
	new b
	b -> Initialize (x, y, width, text, actionProc)
	result AddWidget (b, BUTTON_ID)
    end CreateButton


    function CreateButtonFull (x, y, width : int,
	    text : string, actionProc : procedure x (),
	    height : int, shortCut : char, default : boolean) :
	    int
	var b : ^ButtonClass
	new b
	b -> InitializeFull (x, y, width, text, actionProc, height,
	    shortCut, default)
	result AddWidget (b, BUTTON_ID)
    end CreateButtonFull


    function CreateCheckBox (x, y : int, text : string,
	    actionProc : procedure x (filled : boolean)) : int
	var b : ^CheckBoxClass
	new b
	b -> Initialize (x, y, text, actionProc)
	result AddWidget (b, CHECKBOX_ID)
    end CreateCheckBox


    function CreateCheckBoxFull (x, y : int, text : string,
	    actionProc : procedure x (filled : boolean),
	    alignment : int, shortCut : char) : int
	var b : ^CheckBoxClass
	new b
	b -> InitializeFull (x, y, text, actionProc, alignment, shortCut)
	result AddWidget (b, CHECKBOX_ID)
    end CreateCheckBoxFull


    function CreateRadioButton (x, y : int, text : string,
	    joinID : int, actionProc : procedure x ()) : int
	var b : ^RadioButtonClass
	var widget : ^GenericWidgetClass
	new b

	if joinID = 0 then
	    widget := nil
	else
	    widget := FindWidget (joinID, "CreateRadioButton")
	end if
	if objectclass (widget) >= RadioButtonClass then
	    b -> Initialize (x, y, text, actionProc, widget)
	else
	    BadWidgetKind (joinID, "Radio Button", "CreateRadioButton")
	end if

	result AddWidget (b, RADIO_BUTTON_ID)
    end CreateRadioButton


    function CreateRadioButtonFull (x, y : int, text : string,
	    joinID : int, actionProc : procedure x (),
	    alignment : int, shortCut : char) : int
	var b : ^RadioButtonClass
	var widget : ^GenericWidgetClass
	new b
	if joinID = 0 then
	    widget := nil
	else
	    widget := FindWidget (joinID, "CreateRadioButtonFull")
	end if
	if objectclass (widget) >= RadioButtonClass then
	    b -> InitializeFull (x, y, text, actionProc, widget,
		alignment,
		shortCut)
	else
	    BadWidgetKind (joinID, "Radio Button",
		"CreateRadioButtonFull")
	end if

	result AddWidget (b, RADIO_BUTTON_ID)
    end CreateRadioButtonFull


    function CreatePictureButton (x, y, picture : int,
	    actionProc : procedure x ()) : int
	var b : ^PictureButtonClass
	new b
	b -> Initialize (x, y, picture, actionProc)
	result AddWidget (b, PICTURE_BUTTON_ID)
    end CreatePictureButton


    function CreatePictureButtonFull (x, y, picture : int,
	    actionProc : procedure x (), width, height : int,
	    shortCut : char, mergePic : boolean) : int
	var b : ^PictureButtonClass
	new b
	b -> InitializeFull (x, y, picture, actionProc, height, width,
	    shortCut, mergePic)
	result AddWidget (b, PICTURE_BUTTON_ID)
    end CreatePictureButtonFull


    function CreatePictureRadioButton (x, y, picture, joinID : int,
	    actionProc : procedure x ()) : int
	var b : ^PictureRadioButtonClass
	var widget : ^GenericWidgetClass
	new b

	if joinID = 0 then
	    widget := nil
	else
	    widget := FindWidget (joinID, "CreatePictureRadioButton")
	end if
	if objectclass (widget) >= PictureRadioButtonClass then
	    b -> Initialize (x, y, picture, actionProc, widget)
	else
	    BadWidgetKind (joinID, "Radio Button",
		"CreatePictureRadioButton")
	end if

	result AddWidget (b, PICTURE_RADIO_ID)
    end CreatePictureRadioButton


    function CreatePictureRadioButtonFull (x, y, picture, joinID : int,
	    actionProc : procedure x (), width, height : int,
	    shortCut : char, mergePic : boolean) : int
	var b : ^PictureRadioButtonClass
	var widget : ^GenericWidgetClass
	new b

	if joinID = 0 then
	    widget := nil
	else
	    widget := FindWidget (joinID, "CreatePictureRadioButtonFull")
	end if
	if objectclass (widget) >= PictureRadioButtonClass then
	    b -> InitializeFull (x, y, picture, actionProc, widget,
		width, height, shortCut, mergePic)
	else
	    BadWidgetKind (joinID, "Radio Button",
		"CreatePictureRadioButtonFull")
	end if

	result AddWidget (b, PICTURE_RADIO_ID)
    end CreatePictureRadioButtonFull


    function CreateHorizontalSlider (x, y, length, min, max, start : int,
	    actionProc : procedure x (value : int)) : int
	var b : ^HorizontalSliderClass
	new b
	b -> Initialize (x, y, length, min, max, start, actionProc)
	result AddWidget (b, HSLIDER_ID)
    end CreateHorizontalSlider


    function CreateVerticalSlider (x, y, length, min, max, start : int,
	    actionProc : procedure x (value : int)) : int
	var b : ^VerticalSliderClass
	new b
	b -> Initialize (x, y, length, min, max, start, actionProc)
	result AddWidget (b, VSLIDER_ID)
    end CreateVerticalSlider


    function CreateHorizontalScrollBar (x, y, length, min, max, start :
	    int,
	    actionProc : procedure x (value : int)) : int
	var b : ^HorizontalScrollBarClass
	new b
	b -> Initialize (x, y, length, min, max, start, actionProc)
	result AddWidget (b, HSCROLLBAR_ID)
    end CreateHorizontalScrollBar


    function CreateHorizontalScrollBarFull (x, y, length, min, max : int,
	    start : int, actionProc : procedure x (value : int),
	    arrowIncrement, pageIncrement, thumbSize : int) : int
	var b : ^HorizontalScrollBarClass
	new b
	b -> InitializeFull (x, y, length, min, max, start, actionProc,
	    arrowIncrement, pageIncrement, thumbSize)
	result AddWidget (b, HSCROLLBAR_ID)
    end CreateHorizontalScrollBarFull


    function CreateVerticalScrollBar (x, y, length, min, max, start : int,
	    actionProc : procedure x (value : int)) : int
	var b : ^VerticalScrollBarClass
	new b
	b -> Initialize (x, y, length, min, max, start, actionProc)
	result AddWidget (b, VSCROLLBAR_ID)
    end CreateVerticalScrollBar


    function CreateVerticalScrollBarFull (x, y, length, min, max : int,
	    start : int, actionProc : procedure x (value : int),
	    arrowIncrement, pageIncrement, thumbSize : int) : int
	var b : ^VerticalScrollBarClass
	new b
	b -> InitializeFull (x, y, length, min, max, start, actionProc,
	    arrowIncrement, pageIncrement, thumbSize)
	result AddWidget (b, VSCROLLBAR_ID)
    end CreateVerticalScrollBarFull


    function CreateCanvas (x, y, width, height : int) : int
	var b : ^CanvasClass
	new b
	b -> Initialize (x, y, width, height)
	result AddWidget (b, CANVAS_ID)
    end CreateCanvas


    function CreateCanvasFull (x, y, width, height, border : int,
	    mouseDown, mouseDrag, mouseUp : procedure x (mx, my : int)) : int
	var b : ^CanvasClass
	new b
	b -> InitializeFull (x, y, width, height, border, mouseDown,
	    mouseDrag, mouseUp)
	result AddWidget (b, CANVAS_ID)
    end CreateCanvasFull


    function CreateTextField (x, y, width : int, text : string,
	    actionProc : procedure x (text : string)) : int
	var b : ^TextFieldClass
	new b
	b -> Initialize (x, y, width, text, actionProc)
	result AddWidget (b, TEXT_FIELD_ID)
    end CreateTextField


    function CreateTextFieldFull (x, y, width : int, text : string,
	    actionProc : procedure x (text : string),
	    border, fontID, inputKind : int) : int
	var b : ^TextFieldClass
	new b
	b -> InitializeFull (x, y, width, text, actionProc,
	    border, fontID, inputKind)
	result AddWidget (b, TEXT_FIELD_ID)
    end CreateTextFieldFull


    function CreateTextBox (x, y, width, height : int) : int
	var b : ^TextBoxClass
	new b
	b -> Initialize (x, y, width, height)
	result AddWidget (b, TEXT_BOX_ID)
    end CreateTextBox


    function CreateTextBoxFull (x, y, width, height : int,
	    border, fontID : int) : int
	var b : ^TextBoxClass
	new b
	b -> InitializeFull (x, y, width, height, border, fontID)
	result AddWidget (b, TEXT_BOX_ID)
    end CreateTextBoxFull


    function CreateTextBoxChoice (x, y, width, height : int,
	    border, fontID, TBColor, tColor, sTint : int,
	    actionProc : procedure x (line : int, chosen : boolean)) : int
	var b : ^TextBoxClass
	new b
	b -> InitializeChoice (x, y, width, height, border, fontID, TBColor, tColor, sTint,
	    actionProc)
	result AddWidget (b, TEXT_BOX_ID)
    end CreateTextBoxChoice

    % procedure SelectLine (line : int) %(RCC)
    %     var b : ^TextBoxClass
    %     new b
    %     b -> selectLine (line)
    %     %WidgetModule.Refresh
    % end SelectLine


    %
    % Create Passive Widgets
    %
    function CreateLine (x1, y1, x2, y2, kind : int) : int
	var b : ^LineClass
	new b
	b -> Initialize (x1, y1, x2, y2, kind)
	result AddWidget (b, LINE_ID)
    end CreateLine


    function CreateFrame (x1, y1, x2, y2, kind : int) : int
	var b : ^FrameClass
	new b
	b -> Initialize (x1, y1, x2, y2, kind)
	result AddWidget (b, FRAME_ID)
    end CreateFrame


    function CreateLabelledFrame (x1, y1, x2, y2, kind : int,
	    text : string) : int
	var b : ^LabelledFrameClass
	new b
	b -> Initialize (x1, y1, x2, y2, kind, text)
	result AddWidget (b, LABELLED_FRAME_ID)
    end CreateLabelledFrame


    function CreateLabel (x, y : int, text : string) : int
	var b : ^LabelClass
	new b
	b -> Initialize (x, y, text)
	result AddWidget (b, LABEL_ID)
    end CreateLabel


    function CreateLabelFull (x, y : int, text : string,
	    width, height, alignment, fontID : int) : int
	var b : ^LabelClass
	new b
	b -> InitializeFull (x, y, text, width, height, alignment,
	    fontID)
	result AddWidget (b, LABEL_ID)
    end CreateLabelFull


    function CreatePicture (x, y, picture : int, mergePic : boolean) : int
	var b : ^PictureClass
	new b
	b -> Initialize (x, y, picture, mergePic)
	result AddWidget (b, PICTURE_ID)
    end CreatePicture


    %
    % Create Menus
    %
    function CreateMenu (name : string) : int
	var menu : ^MenuClass
	new menu
	menu -> Initialize (name)

	% Add it to the menu bar
	WidgetModule.GetMenuBar (Window.GetSelect) -> AppendMenu (menu)

	result AddWidget (menu, MENU_ID)
    end CreateMenu


    function CreateMenuItem (name : string,
	    actionProc : procedure x ()) : int
	var menuItem : ^MenuItemClass
	new menuItem
	menuItem -> Initialize (name, actionProc)

	% Add it to the last menu.
	WidgetModule.GetMenuBar (Window.GetSelect) -> GetLastMenu ->
	    AppendMenuItem (menuItem)

	result AddWidget (menuItem, MENU_ITEM_ID)
    end CreateMenuItem


    function CreateMenuItemFull (name : string, actionProc : procedure x (),
	    shortCut : char, addNow : boolean) : int
	% This routine is not fully implemented in GUI v 1.0
	% addNow is always true.
	var menuItem : ^MenuItemClass
	new menuItem
	menuItem -> InitializeFull (name, actionProc, shortCut)

	% Add it to the last menu.
	WidgetModule.GetMenuBar (Window.GetSelect) -> GetLastMenu ->
	    AppendMenuItem (menuItem)

	result AddWidget (menuItem, MENU_ITEM_ID)
    end CreateMenuItemFull


    %
    % General GUI Commands
    %

    % Process an event.  Return true when the GUI.Quit command has been given.
    function ProcessEvent : boolean
	result WidgetModule.ProcessEvent
    end ProcessEvent


    % Set the quitting flag to false
    procedure Quit
	WidgetModule.Quit
    end Quit


    % Set the quitting flag back to false
    procedure ResetQuit
	WidgetModule.ResetQuit
    end ResetQuit


    procedure Refresh
	WidgetModule.Refresh
    end Refresh


    procedure SetBackgroundColour (clr : int)
	WidgetModule.SetBackgroundColour (clr)
    end SetBackgroundColour


    procedure SetBackgroundColor (clr : int)
	WidgetModule.SetBackgroundColor (clr)
    end SetBackgroundColor


    procedure SetNullEventHandler (actionProc : procedure x ())
	WidgetModule.SetNullEventHandler (actionProc)
    end SetNullEventHandler


    procedure SetKeyEventHandler (actionProc : procedure x (key : char))
	WidgetModule.SetKeyEventHandler (actionProc)
    end SetKeyEventHandler


    procedure SetMouseEventHandler (actionProc : procedure x (mx, my : int))
	WidgetModule.SetMouseEventHandler (actionProc)
    end SetMouseEventHandler


    procedure SetDisplayWhenCreated (display : boolean)
	WidgetModule.SetDisplayWhenInitialized (display)
    end SetDisplayWhenCreated


    procedure CloseWindow (window : int)
	WidgetModule.CloseWindow (window)
    end CloseWindow


    procedure ShowWindow (window : int)
	WidgetModule.ShowWindow (window)
    end ShowWindow


    procedure HideWindow (window : int)
	WidgetModule.HideWindow (window)
    end HideWindow


    function GetScrollBarWidth : int
	result WidgetModule.GetScrollBarWidth
    end GetScrollBarWidth


    function GetMenuBarHeight : int
	result WidgetModule.GetMenuBarHeight
    end GetMenuBarHeight


    function GetVersion : int
	result WidgetModule.GetVersion
    end GetVersion


    function GetBackgroundColour : int
	result WidgetModule.GetBackgroundColour
    end GetBackgroundColour


    function GetBackgroundColor : int
	result WidgetModule.GetBackgroundColor
    end GetBackgroundColor


    % Set the whether there's a delay after checking for input
    procedure SetDelayInProcess (newDelayInProcess : boolean)
	WidgetModule.SetDelayInProcess (newDelayInProcess)
    end SetDelayInProcess


    %
    % Commands for Events
    %
    function GetEventWidgetID : int
	result WidgetModule.GetEventWidget -> GetUserValue
    end GetEventWidgetID


    function GetEventWindow : int
	result WidgetModule.GetEventWindow
    end GetEventWindow


    function GetEventTime : int
	result WidgetModule.GetEventTime
    end GetEventTime


    %
    % Commands for All Widgets
    %
    procedure Show (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "Show")
	widget -> Show
    end Show


    procedure Hide (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "Hide")
	widget -> Hide
    end Hide


    function GetX (id : int) : int
	var widget : ^GenericWidgetClass := FindWidget (id, "GetX")
	result widget -> GetX
    end GetX


    function GetY (id : int) : int
	var widget : ^GenericWidgetClass := FindWidget (id, "GetY")
	result widget -> GetY
    end GetY


    function GetWidth (id : int) : int
	var widget : ^GenericWidgetClass := FindWidget (id, "GetWidth")
	result widget -> GetWidth
    end GetWidth


    function GetHeight (id : int) : int
	var widget : ^GenericWidgetClass := FindWidget (id, "GetHeight")
	result widget -> GetHeight
    end GetHeight


    procedure SetColour (id : int, newColour : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetColour")
	widget -> SetColour (newColour)
    end SetColour


    procedure SetColor (id : int, newColour : int)
	SetColour (id, newColour)
    end SetColor

    procedure Dispose (id : int)
	RemoveWidget (id)
    end Dispose


    procedure SetPosition (id : int, x, y : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetPosition")
	widget -> SetPosition (x, y)
    end SetPosition


    procedure SetSize (id : int, width, height : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetSize")
	widget -> SetSize (width, height)
    end SetSize


    procedure SetPositionAndSize (id : int, x, y, width, height : int)
	var widget : ^GenericWidgetClass := FindWidget (id,
	    "SetSizeAndPosition")
	widget -> SetPositionAndSize (x, y, width, height)
    end SetPositionAndSize


    %
    % Commands for Active Widgets
    %
    procedure Enable (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "Enable")
	if objectclass (widget) >= GenericActiveWidgetClass then
	    GenericActiveWidgetClass (widget).Enable
	else
	    BadWidgetKind (id, "widget that can be enabled/disabled",
		"Enable")
	end if
    end Enable


    procedure Disable (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "Disable")
	if objectclass (widget) >= GenericActiveWidgetClass then
	    GenericActiveWidgetClass (widget).Disable
	else
	    BadWidgetKind (id, "widget that can be enabled/disabled",
		"Disable")
	end if
    end Disable


    %
    % Commands for Labelled Widgets, Labels and Labelled Frames
    %
    procedure SetLabel (id : int, text : string)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetLabel")
	if objectclass (widget) >= GenericLabelledWidgetClass then
	    GenericLabelledWidgetClass (widget).SetLabel (text)
	elsif objectclass (widget) >= LabelClass then
	    LabelClass (widget).SetLabel (text)
	elsif objectclass (widget) >= LabelledFrameClass then
	    LabelledFrameClass (widget).SetLabel (text)
	else
	    BadWidgetKind (id, "widget with a label", "SetLabel")
	end if
    end SetLabel


    %
    % Commands for Buttons
    %
    procedure SetDefault (id : int, default : boolean)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetDefault")
	if objectclass (widget) >= ButtonClass then
	    ButtonClass (widget).SetDefault (default)
	else
	    BadWidgetKind (id, "Button", "SetDefault")
	end if
    end SetDefault


    %
    % Commands for Check Boxes
    %
    function GetCheckBox (id : int) : boolean
	var widget : ^GenericWidgetClass := FindWidget (id, "GetCheckBox")

	if objectclass (widget) >= CheckBoxClass then
	    result CheckBoxClass (widget).GetCheckBox
	else
	    BadWidgetKind (id, "CheckBox", "GetCheckBox")
	end if
    end GetCheckBox


    procedure SetCheckBox (id : int, filled : boolean)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetCheckBox")

	if objectclass (widget) >= CheckBoxClass then
	    CheckBoxClass (widget).SetCheckBox (filled)
	else
	    BadWidgetKind (id, "CheckBox", "SetCheckBox")
	end if
    end SetCheckBox


    %
    % Commands for Radio Buttons
    %
    procedure SelectRadio (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SelectRadio")

	if objectclass (widget) >= GenericRadioButtonClass then
	    % SelectNewRadio (widget)
	    RadioButtonClass (widget).Select
	else
	    BadWidgetKind (id, "Radio Button", "SelectRadio")
	end if
    end SelectRadio


    %
    % Commands for Sliders
    %
    function GetSliderValue (id : int) : int
	var widget : ^GenericWidgetClass := FindWidget (id, "GetSliderValue")

	if objectclass (widget) >= GenericSliderClass then
	    result GenericSliderClass (widget).GetSliderValue
	else
	    BadWidgetKind (id, "Slider", "GetSliderValue")
	end if
    end GetSliderValue


    procedure SetSliderValue (id : int, value : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetSliderValue")

	if objectclass (widget) >= GenericSliderClass then
	    GenericSliderClass (widget).SetSliderValue (value)
	else
	    BadWidgetKind (id, "Slider", "SetSliderValue")
	end if
    end SetSliderValue


    procedure SetSliderMinMax (id : int, min, max : int)
	var widget : ^GenericWidgetClass := FindWidget (id,
	    "SetSliderMinMax")

	if objectclass (widget) >= GenericSliderClass then
	    GenericSliderClass (widget).SetMinMax (min, max)
	else
	    BadWidgetKind (id, "Slider", "SetSliderMinMax")
	end if
    end SetSliderMinMax


    procedure SetSliderSize (id : int, size : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetSliderSize")

	if objectclass (widget) >= GenericSliderClass then
	    GenericSliderClass (widget).SetSize (size, size)
	else
	    BadWidgetKind (id, "Slider", "SetSliderSize")
	end if
    end SetSliderSize


    procedure SetSliderReverse (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id,
	    "SetSliderReverse")

	if objectclass (widget) >= GenericSliderClass then
	    GenericSliderClass (widget).SetSliderReverse
	else
	    BadWidgetKind (id, "Slider", "SetSliderReverse")
	end if
    end SetSliderReverse


    %
    % Commands for Scroll Bars
    %
    procedure SetScrollAmount (id : int, arrowInc, pageInc, thumbSize : int)
	var widget : ^GenericWidgetClass := FindWidget (id,
	    "SetScrollAmount")

	if objectclass (widget) >= GenericScrollBarClass then
	    GenericScrollBarClass (widget).SetScrollAmount (arrowInc,
		pageInc, thumbSize)
	else
	    BadWidgetKind (id, "ScrollBarClass", "SetScrollAmount")
	end if
    end SetScrollAmount


    %
    % Commands for Canvases
    %
    procedure DrawArc (id, x, y, xRadius, yRadius, initAngle : int,
	    finalAngle, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawArc")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawArc (x, y, xRadius, yRadius,
		initAngle, finalAngle, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawArc")
	end if
    end DrawArc


    procedure DrawBox (id, x1, y1, x2, y2, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawBox")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawBox (x1, y1, x2, y2, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawBox")
	end if
    end DrawBox


    procedure DrawCls (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawCls")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawCls
	else
	    BadWidgetKind (id, "CanvasClass", "DrawCls")
	end if
    end DrawCls


    procedure DrawDot (id, x, y, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawDot")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawDot (x, y, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawDot")
	end if
    end DrawDot


    procedure DrawFill (id, x, y, fillClr, borderClr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawFill")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawFill (x, y, fillClr, borderClr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawFill")
	end if
    end DrawFill


    procedure DrawFillArc (id, x, y, xRadius, yRadius, initAngle : int,
	    finalAngle, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawFillArc")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawFillArc (x, y, xRadius, yRadius,
		initAngle, finalAngle, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawFillArc")
	end if
    end DrawFillArc


    procedure DrawFillBox (id, x1, y1, x2, y2, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawFillBox")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawFillBox (x1, y1, x2, y2, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawFillBox")
	end if
    end DrawFillBox


    procedure DrawFillMapleLeaf (id, x1, y1, x2, y2, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id,
	    "DrawFillMapleLeaf")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawFillMapleLeaf (x1, y1, x2, y2, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawFillMapleLeaf")
	end if
    end DrawFillMapleLeaf


    procedure DrawFillOval (id, x, y, xRadius, yRadius, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawFillOval")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawFillOval (x, y, xRadius, yRadius,
		clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawFillOval")
	end if
    end DrawFillOval


    procedure DrawFillPolygon (id : int, x, y : array 1 .. * of int,
	    n, clr : int)
	var nx, ny : array 1 .. n of int
	var widget : ^GenericWidgetClass := FindWidget (id,
	    "DrawFillPolygon")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawFillPolygon (x, y, n, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawFillPolygon")
	end if
    end DrawFillPolygon


    procedure DrawFillStar (id, x1, y1, x2, y2, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawFillStar")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawFillStar (x1, y1, x2, y2, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawFillStar")
	end if
    end DrawFillStar


    procedure DrawLine (id, x1, y1, x2, y2, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawLine")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawLine (x1, y1, x2, y2, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawLine")
	end if
    end DrawLine


    procedure DrawMapleLeaf (id, x1, y1, x2, y2, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawMapleLeaf")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawMapleLeaf (x1, y1, x2, y2, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawMapleLeaf")
	end if
    end DrawMapleLeaf


    procedure DrawOval (id, x, y, xRadius, yRadius, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawOval")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawOval (x, y, xRadius, yRadius, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawOval")
	end if
    end DrawOval


    procedure DrawPolygon (id : int, x, y : array 1 .. * of int,
	    n, clr : int)
	var nx, ny : array 1 .. n of int
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawPolygon")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawPolygon (x, y, n, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawPolygon")
	end if
    end DrawPolygon


    procedure DrawStar (id, x1, y1, x2, y2, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawStar")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawStar (x1, y1, x2, y2, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawStar")
	end if
    end DrawStar


    procedure DrawText (id : int, text : string, x, y, fontID, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "DrawText")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).DrawText (text, x, y, fontID, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "DrawText")
	end if
    end DrawText


    procedure FontDraw (id : int, text : string, x, y, fontID, clr : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "FontDraw")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).FontDraw (text, x, y, fontID, clr)
	else
	    BadWidgetKind (id, "CanvasClass", "FontDraw")
	end if
    end FontDraw


    procedure PicDraw (id, picID, x, y, mode : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "PicDraw")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).PicDraw (picID, x, y, mode)
	else
	    BadWidgetKind (id, "CanvasClass", "PicDraw")
	end if
    end PicDraw


    function PicNew (id, x1, y1, x2, y2 : int) : int
	var widget : ^GenericWidgetClass := FindWidget (id, "PicNew")

	if objectclass (widget) >= CanvasClass then
	    result CanvasClass (widget).PicNew (x1, y1, x2, y2)
	else
	    BadWidgetKind (id, "CanvasClass", "PicNew")
	    result 0 % We never reach here.
	end if
    end PicNew


    procedure PicScreenLoad (id : int, fileName : string, x, y, mode : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "PicScreenLoad")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).PicScreenLoad (fileName, x, y, mode)
	else
	    BadWidgetKind (id, "CanvasClass", "PicScreenLoad")
	end if
    end PicScreenLoad


    procedure PicScreenSave (id, x1, y1, x2, y2 : int, fileName : string)
	var widget : ^GenericWidgetClass := FindWidget (id, "PicScreenSave")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).PicScreenSave (x1, y1, x2, y2, fileName)
	else
	    BadWidgetKind (id, "CanvasClass", "PicScreenSave")
	end if
    end PicScreenSave


    procedure SetXOR (id : int, xorMode : boolean)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetXOR")

	if objectclass (widget) >= CanvasClass then
	    CanvasClass (widget).SetXOR (xorMode)
	else
	    BadWidgetKind (id, "CanvasClass", "SetXOR")
	end if
    end SetXOR


    %
    % Commands for Text Fields
    %
    procedure SetText (id : int, text : string)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetText")

	if objectclass (widget) >= TextFieldClass then
	    TextFieldClass (widget).SetText (text)
	else
	    BadWidgetKind (id, "TextFieldClass", "SetText")
	end if
    end SetText


    function GetText (id : int) : string
	var widget : ^GenericWidgetClass := FindWidget (id, "GetText")

	if objectclass (widget) >= TextFieldClass then
	    result TextFieldClass (widget).GetText
	else
	    BadWidgetKind (id, "TextFieldClass", "GetText")
	    result "" % We never reach here.
	end if
    end GetText


    procedure SetSelection (id : int, fromSel, toSel : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetSelection")

	if objectclass (widget) >= TextFieldClass then
	    TextFieldClass (widget).SetSelection (fromSel, toSel)
	else
	    BadWidgetKind (id, "TextFieldClass", "SetSelection")
	end if
    end SetSelection


    procedure SetActive (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetActive")

	if objectclass (widget) >= TextFieldClass then
	    TextFieldClass (widget).SetActive
	else
	    BadWidgetKind (id, "TextFieldClass", "SetActive")
	end if
    end SetActive


    procedure SetEchoChar (id : int, ch : char)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetActive")

	if objectclass (widget) >= TextFieldClass then
	    TextFieldClass (widget).SetEchoChar (ch)
	else
	    BadWidgetKind (id, "TextFieldClass", "SetEchoChar")
	end if
    end SetEchoChar


    %
    % Commands for Text Boxes
    %
    procedure ClearText (id : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "ClearText")

	if objectclass (widget) >= TextBoxClass then
	    TextBoxClass (widget).ClearText
	else
	    BadWidgetKind (id, "TextBoxClass", "ClearText")
	end if
    end ClearText


    procedure AddText (id : int, text : string)
	var widget : ^GenericWidgetClass := FindWidget (id, "AddText")

	if objectclass (widget) >= TextBoxClass then
	    TextBoxClass (widget).AddText (text)
	else
	    BadWidgetKind (id, "TextBoxClass", "AddText")
	end if
    end AddText


    procedure AddLine (id : int, text : string)
	var widget : ^GenericWidgetClass := FindWidget (id, "AddLine")

	if objectclass (widget) >= TextBoxClass then
	    TextBoxClass (widget).AddLine (text)
	else
	    BadWidgetKind (id, "TextBoxClass", "AddLine")
	end if
    end AddLine


    procedure SetTopLine (id : int, lineNumber : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetTopLine")

	if objectclass (widget) >= TextBoxClass then
	    TextBoxClass (widget).SetTopLine (lineNumber)
	else
	    BadWidgetKind (id, "TextBoxClass", "SetTopLine")
	end if
    end SetTopLine

    %Colin Creamer
    %Oct 20 2010
    %Sets witch line is selected (Highlighted)
    procedure SetSelectedLine (id : int, lineNumber : int)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetSelectedLine")

	if objectclass (widget) >= TextBoxClass then
	    TextBoxClass (widget).SetSelectedLine (lineNumber)
	else
	    BadWidgetKind (id, "TextBoxClass", "SetSelectedLine")
	end if
    end SetSelectedLine


    procedure SetScrollOnAdd (id : int, scrollOnAdd : boolean)
	var widget : ^GenericWidgetClass := FindWidget (id, "SetScrollOnAdd")

	if objectclass (widget) >= TextBoxClass then
	    TextBoxClass (widget).SetScrollOnAdd (scrollOnAdd)
	else
	    BadWidgetKind (id, "TextBoxClass", "SetScrollOnAdd")
	end if
    end SetScrollOnAdd


    %
    % Commands for Menus
    %
    procedure ShowMenuBar
	WidgetModule.GetMenuBar (Window.GetSelect) -> Show
    end ShowMenuBar


    procedure HideMenuBar
	WidgetModule.GetMenuBar (Window.GetSelect) -> Hide
    end HideMenuBar
end GUI

