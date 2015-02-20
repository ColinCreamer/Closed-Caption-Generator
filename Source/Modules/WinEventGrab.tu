/*
 Window Event Graber
 Colin Creamer
 March 13 2011

 --------------------------------
 re-writen to be SIMPLIFIED
 August 4 2011
 ---------------------------------
 Last Modified: August 14 2011

 Decreition:
 This module will moditor you mouse and track if you click
 on top of the minimize, maximize or exit butons withing the root
 program window. This alows turring to gain acess to the these buttons

 TODO

 Finish functionality for other buttons
 -Maximize/restore
 -Minimize

 Add Win XP pixels offsett sets
 (so button line up properly on win XP too)

 */

unit

module WinEventGrab
    %-----Exports-------
    export /*SetRestore, SetMaximize,*/ SetExit,
	ProcessEvent, Quit, Debug

    %-------------------
    %-----Variables-----
    %-------------------

    %---General---
    var QUIT : boolean := false
    var DEBUG : boolean := false
    %var Maximized : boolean := false

    %---Pixel offsets--- (%XP Or Vista/7)

    %Corodinates for Exit Button (Win 7)
    const exit_x1 : int := maxx - (48 - 4)
    const exit_y1 : int := maxy + 11
    const exit_x2 : int := exit_x1 + 48
    const exit_y2 : int := exit_y1 + 21


    %--------------------------
    %----Action Procedures-----
    %--------------------------


    procedure defultExitProc
	QUIT := true
    end defultExitProc

    proc doNothing
    end doNothing

    var exitProcedure : procedure x () := defultExitProc
    /*var maximizeProcedure : procedure x () := doNothing
     var restoreProcedure : procedure x () := doNothing
     var minimizeProcedure : procedure x () := doNothing*/


    %--------------------------------------------------
    %-----------Functions & Procedures ----------------
    %--------------------------------------------------

    /*
     procedure maximizeAndRestore
     if Maximized then
     restoreProcedure ()
     Maximized := false
     else
     maximizeProcedure ()
     Maximized := true
     end if
     end maximizeAndRestore
     */


    /*
     procedure SetRestore (givenProc : procedure x ())
     restoreProcedure := givenProc
     end SetRestore

     procedure SetMaximize (givenProc : procedure x ())
     maximizeProcedure := givenProc
     end SetMaximize

     */

    procedure SetExit (givenProc : procedure x ())
	exitProcedure := givenProc
    end SetExit

    procedure Quit
	QUIT := true
    end Quit

    procedure Debug
	DEBUG := not DEBUG
    end Debug


    %---------------------------------
    %--- DRAW CURVED BOX SUB ROUTEAN --------
    %---------------------------------
    %Draws a box, but with curved edges
    procedure drawCurvedBox (X, Y, XX, YY, curve, col, fillCol : int, fill : boolean)
	%Uses standard comands if thers no curve
	if curve < 2 then
	    if fill then
		Draw.FillBox (X, Y, XX, YY, fillCol)
		Draw.Box (X, Y, XX, YY, col)
	    else
		Draw.Box (X, Y, XX, YY, col)
	    end if
	    return
	end if
	%Flips x or y so smalles comes first
	var x, xx, y, yy : int
	if X > XX then
	    x := XX
	    xx := X
	else
	    x := X
	    xx := XX
	end if
	if Y > YY then
	    y := YY
	    yy := Y
	else
	    y := Y
	    yy := YY
	end if
	%Width and Height
	const w : int := xx - x
	const h : int := yy - y
	%Makes cure fit if it overflows
	var c : int := curve
	if c > (w div 2) then
	    c := w div 2
	end if
	if c > (h div 2) then
	    c := h div 2
	end if
	%Draw Corners
	Draw.Arc (xx - c, yy - c, c, c, 0, 90, col) %topRight
	Draw.Arc (x + c, yy - c, c, c, 90, 180, col) %topLeft
	Draw.Arc (x + c, y + c, c, c, 180, 270, col) %bottomLeft
	Draw.Arc (xx - c, y + c, c, c, 270, 0, col) %bottomRight
	%Draw Edges
	Draw.Line (x + c - 1, y, xx - c, y, col) %BottomHorizontal
	Draw.Line (x + c, yy, xx - c, yy, col) %TopHorizontal
	Draw.Line (x, y + c, x, yy - c + 1, col) %LeftVertical
	Draw.Line (xx, y + c, xx, yy - c, col) %RightVertical
	%Fill The Box
	if fill then
	    Draw.Fill (x + (w div 2), y + (h div 2), fillCol, col)
	end if
    end drawCurvedBox

    proc CurvedBox (x, y, xx, yy, curve, col : int)
	drawCurvedBox (x, y, xx, yy, curve, col, col, false)
    end CurvedBox

    proc FillCurvedBox (x, y, xx, yy, curve, col : int)
	drawCurvedBox (x, y, xx, yy, curve, col, col, true)
    end FillCurvedBox

    proc FillCurvedBoxFull (x, y, xx, yy, curve, col, fillCol : int)
	drawCurvedBox (x, y, xx, yy, curve, col, fillCol, true)
    end FillCurvedBoxFull



    %---------------------------------
    %--- TOOL TIP SUB ROUTEAN --------
    %---------------------------------

    %Tool Tip Global Vars
    var lastMsg_ToolTip : string := ""
    var imageID_ToolTip : int %Used to reDraw ToolTip
    var eraseImageID_ToolTip : int %used to erace ToolTip
    var x_ToolTip, y_ToolTip : int := 0


    %Will restor original pixels
    %Clears toolTip images from menory
    proc eraceToolTip

	if lastMsg_ToolTip not= "" then         %only erace if there is a message
	    lastMsg_ToolTip := ""
	    Pic.Free (imageID_ToolTip)
	    Pic.Draw (eraseImageID_ToolTip, x_ToolTip, y_ToolTip, picCopy)
	    View.Update
	    Pic.Free (eraseImageID_ToolTip)
	end if
    end eraceToolTip

    %Draws and re-draws a ingle tool tip
    proc simpToolTip (msg : string, xx, yy : int)
	if msg = "" then
	    eraceToolTip
	    return
	end if
	if lastMsg_ToolTip = msg then
	    %Re-draw tool tip from image
	    Pic.Draw (imageID_ToolTip, x_ToolTip, x_ToolTip, picCopy)
	else

	    %Prepare for toolTip
	    const font : int := Font.New ("Arial:8")
	    const pad : int := 4
	    const shaddow : int := 1
	    const w : int := Font.Width (msg, font) + (pad * 2)
	    const h : int := 20
	    const y : int := yy - h
	    %Ensures Tip doesn flow of screen
	    var x2 : int := (xx + w)
	    var x : int := xx
	    if x2 + shaddow >= maxx then
		x := maxx - (w + shaddow + 1)
		x2 := x + w
	    end if
	    const y2 : int := yy


	    eraceToolTip %reace previous message (if there is one)

	    lastMsg_ToolTip := msg
	    x_ToolTip := x
	    y_ToolTip := y - shaddow
	    eraseImageID_ToolTip := Pic.New (x_ToolTip, y_ToolTip, x2 + shaddow, y2)

	    %Draw the tool Tip
	    FillCurvedBox (x, y - shaddow, x2 + shaddow, y2, 4, 19) %Shadow
	    FillCurvedBoxFull (x, y, x2, y2, 4, 21, 92) %Bace & Outline
	    %Draw.FillBox (x, y - shaddow, x2 + shaddow, y2, 19) %Shadow
	    %Draw.FillBox (x, y, x2, y2, 92) %Bace
	    %Draw.Box (x, y, x2, y2, 21) %Outline
	    Font.Draw (msg, x + pad, y + (h div 2) - 3, font, 22)

	    %Save Tool Tip for redrawing
	    imageID_ToolTip := Pic.New (x_ToolTip, y_ToolTip, x2 + shaddow, y2)
	    Font.Free (font)
	    %sound(500,7)
	    %sound(900,3)
	end if
	View.Update
    end simpToolTip

    %----------------------------
    %----- END OF TOOL TIP  -----
    %----------------------------

    procedure mouseMonitor
	var x, y, b : int
	var showToolTip : boolean := false
	loop %Traps Runtime while mouse is over exit button
	    mousewhere (x, y, b)
	    if x > exit_x1 and y > exit_y1 and x < exit_x2 and y < exit_y2 then
		if Window.GetActive = defWinID then         %if window active
		    if not showToolTip then
			simpToolTip ("Click to Exit.", maxx, maxy - 3)
			showToolTip := true
		    end if
		    for r : 1 .. 100 %Checks 100 times for mouse click
			mousewhere (x, y, b)
			if b = 1 then
			    if DEBUG then
				sound (77, 1)
			    end if
			    exitProcedure %Call the exit procedure
			    %QUIT_LOCALY := true
			end if
		    end for
		else
		    if not showToolTip then
			simpToolTip ("Double Click to Exit.", maxx, maxy - 3)
			showToolTip := true
		    end if
		end if
	    else
		if showToolTip then
		    eraceToolTip
		    showToolTip := false
		end if
		%Exit the trap if mouse leaves active area (exit button)
		exit
	    end if
	    exit when QUIT
	end loop
    end mouseMonitor


    %-----------------------------------
    %----------Main Module loop---------
    %-----------------------------------

    function ProcessEvent () : boolean
	if QUIT then
	    result QUIT
	end if


	mouseMonitor

	result QUIT
    end ProcessEvent

end WinEventGrab

