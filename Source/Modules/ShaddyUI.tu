%ShadyUI GUI Modual
%Colin Creamer
%Feb 15 2011
%An Expanded version of my legacy Graphic Butom module
%The ShadyUI is a small library of diferent nicely shadded GUI widits

%LAST MODIFIED: August 16 2011




%---Originaly---------
%Graphic Button Module
%Generates Gradiant textues Graphic Buttons from scratch. No external images used.
%Writen By: Colin Creamer
%October 2 2009
%---------------------
unit

module SUI %Shaddy User Interface

    %--------------------------
    %-------- Exports ---------
    %--------------------------
    export
	New, ProcessEvent,
	Hide, UnHide, Lock, UnLock,
    %Get Commands
	GetText, GetPos, GetPosFull, GetWidth, GetHeight,
    %Set Commands
	SetText, SetPos, SetPosFull, SetWidth, SetHeight,
	SetBaseColor, SetColor, SetFontColor, SetFontSize,
    %Shortcuts
	NewText, Pos, BaseColor, Color, FontColor, FontSize, %Set commands
	processSUI, %main
    %Other
	FPS, Debug

    %------------------------------------------------------------
    %--------------------- VARIABLES ----------------------------
    %------------------------------------------------------------

    var debug : boolean := false  %Debug features on/off


    type widgitData :
	record
	    X, Y, X2, Y2 : int %Position
	    BaseColor, GlowColor, FontColor, FontSize : int
	    Active, Locked : boolean %Widgit Stat: On, off, disabled...
	    Text : string
	    GlowIntesity : int
	    ActionProc : procedure x ()
	end record

    var btnID : int := 0
    var widgit : flexible array 1 .. 0 of widgitData
    var freedWidgitIDs : flexible array 1 .. 0 of int %records deleted ids for laiter use
    var glowIntervals : int := 60
    var activeButtonID : int := 0 %ID of button thats pressed down
    var mouseState : int := 0 %0=normal 1=overbutton 2=pressingButton 3=button Clicked



    %------------------------------------------------------------
    %------------- PROCEDURES AND FUNCTIONS ---------------------
    %------------------------------------------------------------


    var LPSTimer, LPSStart, LPSCount, LPS : int := 0           %loops per second timer
    %waits one loop before making an adjustment to the animation intervals
    var anticipateAdjust : boolean := false
    %Measures the LPS (Loops per second) AKA: FPS
    procedure LPSMod
	LPSTimer := Time.Elapsed - LPSStart
	LPSCount += 1
	if LPSTimer >= 1000 then
	    LPSStart := Time.Elapsed
	    LPS := LPSCount
	    if LPS not= LPSCount then  %LPS Changed
		if anticipateAdjust then
		    glowIntervals := LPS
		    anticipateAdjust := false
		else
		    anticipateAdjust := true
		end if
	    end if
	    LPSCount := 0
	end if
    end LPSMod

    fcn FPS () : int
	result LPS
    end FPS


    %---Generate Button Graphics--------------------------------------------

    % fades one colour into another in incromental steps
    function transitionColorS (originalColor, newColor, step, maxSteps, cSlot : int) : int
	var R1, G1, B1 : real := 0 %Original RGB Color
	var R2, G2, B2 : real := 0 %New RGB Color
	var R3, G3, B3 : real := 0 %Transitioned RGB Color
	var rDiff, gDiff, bDiff : real % diference between original and new color
	var colorSlot := cSlot
	RGB.GetColor (originalColor, R1, G1, B1)
	RGB.GetColor (newColor, R2, G2, B2)
	%finds DIference between colours
	rDiff := R1 - R2
	gDiff := G1 - G2
	bDiff := B1 - B2
	%Chops difernce into steps and subtracts aproprate number of steps
	R3 := R1 - (rDiff / maxSteps) * step
	G3 := G1 - (gDiff / maxSteps) * step
	B3 := B1 - (bDiff / maxSteps) * step
	%Save new color in color slot
	RGB.SetColor (colorSlot, R3, G3, B3)
	result colorSlot
    end transitionColorS
    function transitionColor (originalColor, newColor, step, maxSteps : int) : int
	result transitionColorS (originalColor, newColor, step, maxSteps, 253)
    end transitionColor

    %adjusts the brightness of a color
    function colorShader (Color : int, intensity : real) : int
	var OR, OG, OB : real := 0 %Original RGB
	var NR, NG, NB : real := 0 %New RGB
	var colorSlot := 254
	RGB.GetColor (Color, OR, OG, OB)

	if OR > intensity then
	    NR := OR - (OR - intensity) / 2
	else
	    NR := intensity - (intensity - OR) / 2
	end if

	if OG > intensity then
	    NG := OG - (OG - intensity) / 2
	else
	    NG := intensity - (intensity - OG) / 2
	end if

	if OB > intensity then
	    NB := OB - (OB - intensity) / 2
	else
	    NB := intensity - (intensity - OB) / 2
	end if

	RGB.SetColor (colorSlot, NR, NG, NB)
	result colorSlot
    end colorShader

    %Creates A Gradient filled Box
    procedure shadedBox (x1, y1, x2, y2, Color : int, reverse : boolean)
	const w := x2 - x1 %width
	const h := y2 - y1 %height
	for y : 1 .. h
	    if reverse then
		Draw.Line (x1, y + y1, x2, y + y1, colorShader (Color, cosd ((y * 90) / h)))
	    else
		Draw.Line (x1, y + y1, x2, y + y1, colorShader (Color, cosd (((y * 90) / h) + 270)))
	    end if
	end for
    end shadedBox

    %automaticaly determins the lagest font that can fit in a given box
    function autoFontSize (text : string, bWidth, bHeight : int) : int
	var fontSize : int := 1
	var height, ascent, descent, internalLeading : int
	loop
	    const font := Font.New ("Arial:" + intstr (fontSize) + ":Bold")
	    Font.Sizes (font, height, ascent, descent, internalLeading)
	    const width := Font.Width (text, font)
	    Font.Free (font)
	    if height <= bHeight and width <= bWidth then
		fontSize += 1
	    else
		if fontSize > 1 then
		    fontSize -= 1 %bumps font size back to the last one that fit
		end if
		result fontSize
	    end if
	end loop
    end autoFontSize

    procedure shadedButton (x1, y1, x2, y2, Color, fontColor, fontSize : int, text : string, Pressed : boolean)

	% %botom outline
	% if Pressed then
	%     Draw.Box (x, y, x + width, y + height, colorShader (Color, 0.8))
	% else
	%     Draw.Box (x, y, x + width, y + height, colorShader (Color, 0.2))
	% end if
	% %Top outline
	% if Pressed then
	%     Draw.Box (x, y, x + width, y + height, colorShader (Color, 0.2))
	% else
	%     Draw.Box (x, y, x + width, y + height, colorShader (Color, 0.8))
	% end if
	shadedBox (x1, y1, x2, y2, Color, Pressed)

	const width := x2 - x1
	const height := y2 - y1
	const font := Font.New ("Arial:" + intstr (fontSize) + ":Bold")
	var fHeight, ascent, descent, internalLeading : int

	Font.Sizes (font, fHeight, ascent, descent, internalLeading)

	const fX := x1 + (width div 2) - (Font.Width (text, font) div 2)
	const fY := y1 + (height div 2) - (fHeight div 2) + descent
	if Pressed then
	    Font.Draw (text, fX, fY, font, fontColor)
	else
	    Font.Draw (text, fX, fY + (height div 20), font, fontColor)
	end if
	Font.Free (font)
    end shadedButton


    %-------------------------------------

    %used to generate a new buton within turring
    function New (x, y, w, h : int, text : string, fontSize, fontColor, baseColor, highlightColor : int, actionProc : procedure x ()) : int
	%Resize array
	btnID += 1
	new widgit, btnID
	%Set Action Procedure
	widgit (btnID).ActionProc := actionProc
	%Set position
	widgit (btnID).X := x
	widgit (btnID).Y := y
	widgit (btnID).X2 := x + w
	widgit (btnID).Y2 := y + h
	%Set Colors
	widgit (btnID).BaseColor := baseColor
	widgit (btnID).GlowColor := highlightColor
	widgit (btnID).FontColor := fontColor
	%Set Settings
	if fontSize = 0 then
	    widgit (btnID).FontSize := autoFontSize (text, w, h)
	else
	    widgit (btnID).FontSize := fontSize
	end if
	widgit (btnID).Text := text
	widgit (btnID).GlowIntesity := 0
	widgit (btnID).Active := true
	widgit (btnID).Locked := false

	% shadedButton (x, y, w, h, baseColor, fontColor, text, false)
	% picIDs (btnID, 1) := Pic.New (x, y, x + w, y + h)
	% shadedButton (x, y, w, h, transitionColorS (baseColor, highlightColor, 7, 9, 253), fontColor, text, false)
	% picIDs (btnID, 2) := Pic.New (x, y, x + w, y + h)
	% shadedButton (x, y, w, h, PressedColor, fontColor, text, true)
	% picIDs (btnID, 3) := Pic.New (x, y, x + w, y + h)
	% picIDs (btnID, 0) := picIDs (btnID, 1)

	result btnID
    end New



    procedure mouseMonitor     % Monitors mouse ans sawps button pictures
	var x, y, b : int
	mousewhere (x, y, b)
	for decreasing i : btnID .. 0 %counts down untill first buton is found
	    if i = 0 then     %no button found under mouse
		activeButtonID := 0
		mouseState := 0
		exit
	    end if
	    if widgit (i).Active and not widgit (i).Locked then
		if x > widgit (i).X and y > widgit (i).Y and x < widgit (i).X2 and y < widgit (i).Y2 then
		    if mouseState <= 1 then
			activeButtonID := i
			mouseState := 1
		    end if

		    if b = 1 then
			if mouseState = 1 then
			    mouseState := 2
			end if
		    else
			if mouseState = 2 then
			    mouseState := 3
			    %delay (1000)
			end if
		    end if
		    exit
		end if
	    end if
	end for
    end mouseMonitor



    %-------------------------------------------------------
    %---------------Export Procedures ----------------------
    %-------------------------------------------------------
    %Global Widgit Acesss

    procedure Hide (ID : int)
	widgit (ID).Active := false
    end Hide
    procedure UnHide (ID : int)
	widgit (ID).Active := true
    end UnHide
    procedure Lock (ID : int)
	widgit (ID).Locked := true
    end Lock
    procedure UnLock (ID : int)
	widgit (ID).Locked := false
    end UnLock

    %------------------------
    %----- Get Commands -----
    %------------------------

    function GetText (ID : int) : string
	if ID = 0 then
	    result ""
	end if
	result widgit (ID).Text
    end GetText

    procedure GetPos (ID : int, var x, y : int)
	x := widgit (ID).X
	y := widgit (ID).Y
    end GetPos

    procedure GetPosFull (ID : int, var x, y, x2, y2 : int)
	GetPos (ID, x, y)
	x2 := widgit (ID).X2
	y2 := widgit (ID).Y2
    end GetPosFull

    function GetWidth (ID : int) : int
	result widgit (ID).X2 - widgit (ID).X
    end GetWidth

    function GetHeight (ID : int) : int
	result widgit (ID).Y2 - widgit (ID).Y
    end GetHeight


    %------------------------
    %----- Set Commands -----
    %------------------------

    procedure SetText (ID : int, myText : string)
	widgit (ID).Text := myText
    end SetText

    %Set the position of the button
    procedure SetPos (ID : int, x, y : int)
	widgit (ID).X := x
	widgit (ID).Y := y
	widgit (ID).X2 := x + GetWidth (ID)
	widgit (ID).Y2 := y + GetHeight (ID)
    end SetPos

    procedure SetPosFull (ID : int, x, y, x2, y2 : int)
	widgit (ID).X := x
	widgit (ID).Y := y
	widgit (ID).X2 := x2
	widgit (ID).Y2 := y2
    end SetPosFull

    procedure SetWidth (ID : int, width : int)
	widgit (ID).X2 := widgit (ID).X + width
    end SetWidth

    procedure SetHeight (ID : int, height : int)
	widgit (ID).Y2 := widgit (ID).Y + height
    end SetHeight

    procedure SetBaseColor (ID : int, myBaceColor : int)
	widgit (ID).BaseColor := myBaceColor
    end SetBaseColor

    procedure SetColor (ID : int, myColor : int)
	widgit (ID).GlowColor := myColor
    end SetColor

    procedure SetFontColor (ID : int, myFontColor : int)
	widgit (ID).FontColor := myFontColor
    end SetFontColor

    procedure SetFontSize (ID : int, myFontSize : int)
	widgit (ID).FontSize := myFontSize
    end SetFontSize



    %-----------------------------
    %---------SHORTCUTS-----------
    %-----------------------------

    %Set Shortcuts
    proc Pos (ID : int, x, y : int)
	SetPos (ID, x, y)
    end Pos
    proc NewText (ID : int, myText : string) %legacy
	SetText (ID, myText)
    end NewText
    proc BaseColor (ID : int, myBaceColor : int)
	SetBaseColor (ID, myBaceColor)
    end BaseColor
    proc Color (ID : int, myColor : int)
	SetColor (ID, myColor)
    end Color
    proc FontColor (ID : int, myFontColor : int)
	SetFontColor (ID, myFontColor)
    end FontColor
    proc FontSize (ID : int, myFontSize : int)
	SetFontSize (ID, myFontSize)
    end FontSize


    %-----------------
    %----- Misc  -----
    %-----------------

    procedure Debug
	%Toggels Debug mode
	debug := not debug
    end Debug

    %------------------------------------------------------------
    %-------------Main Module Processing Loop -------------------
    %------------------------------------------------------------



    procedure ProcessEvent
	LPSMod
	if Window.GetActive = -1 then     %if window active
	    mouseMonitor
	end if


	var baseColor : int
	var fontColor : int
	var Pressed : boolean := false
	for i : 1 .. btnID
	    Pressed := false

	    if widgit (i).Active then

		if widgit (i).Locked then
		    baseColor := widgit (i).BaseColor
		    fontColor := colorShader (widgit (i).FontColor, 5)
		else
		    if mouseState = 1 and activeButtonID = i then %mouse Over
			if widgit (i).GlowIntesity < glowIntervals - 3 then
			    widgit (i).GlowIntesity += 3
			end if
		    else
			if widgit (i).GlowIntesity > 0 then
			    widgit (i).GlowIntesity -= 1
			end if
		    end if
		    baseColor := transitionColor (widgit (i).BaseColor, widgit (i).GlowColor, widgit (i).GlowIntesity, glowIntervals)
		    fontColor := widgit (i).FontColor

		    if mouseState = 2 and activeButtonID = i then
			Pressed := true
		    end if

		end if %widgit locked (no mouse)

		%Draws Bounding Box only
		%Draw.Box (widgit(i).X, widgit(i).Y, widgit(i).X2, widgit(i).Y2, red)

		%Draws Fully shaded button
		shadedButton (widgit (i).X, widgit (i).Y, widgit (i).X2, widgit (i).Y2, baseColor, fontColor, widgit (i).FontSize, widgit (i).Text, Pressed)


	    end if %Widgit Active
	end for
	if debug then
	    Text.Locate (2, 1)
	    var mx,my,mb : int
	    mousewhere(mx,my,mb)
	    put "State: ", mouseState, "  ID: ", activeButtonID, " (", GetText (activeButtonID), ")    LPS: ", LPS, "    x:",mx, " y:",my, " b:",mb
	end if

	%Execute button CLick procedure
	if mouseState = 3 then
	    %(only if active and unlocked)
	    if widgit (activeButtonID).Active and not widgit (activeButtonID).Locked then

		widgit (activeButtonID).ActionProc %Call the procedure
		activeButtonID := 0
		mouseState := 0
	    end if
	end if
    end ProcessEvent

    proc processSUI %Shortcut - Legacy Command
	ProcessEvent
    end processSUI



end SUI


