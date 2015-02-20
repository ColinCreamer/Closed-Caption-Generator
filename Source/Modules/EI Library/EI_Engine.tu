unit

% /---------------------------------------------\
% |------------- EI Render Engine --------------|
% |---------------------------------------------/
% |  Compiler Version: v1.4.1
% |  Compiled on Monday February 27th, 2012 at 4:12AM
% |  Compile Time: 0 millaseconds
% |____________________________________________
% |         Created By: Colin Creamer         |
% |-------------------------------------------|


module Engine

    export Render

    %----------Variables-------
    %The Color Brightness threshold for trancparent pixels
    const clearlyBright : int := 255 

    var renderWinID : int
    var firstRun : boolean := true


    %---------------Procedures---------------
    %----------------------------------------

    %For Simple Trouble shooting
    procedure tShoot (text : string)
	setscreen ("title:" + text)
    end tShoot


    procedure setRenderWindow
	if firstRun then
	    % The Main Render window used for all rendering
	    renderWinID := Window.Open (
		"title:Render Window (should not be visible),graphics,invisible,offscreenonly,nobuttonbar,nocursor,noecho"
		)
	    firstRun := false
	end if
    end setRenderWindow


    %Returns the distance to the next unique color
    function findDistToNextNewColor (var currentIndex : int, N : array 1 .. * of nat1) : int
	var num : int := 0
	for i : currentIndex .. upper (N)
	    if N (i) = 0 then
		num += 255
	    else
		num += N (i)
		currentIndex := i+1
		result num
	    end if
	end for
	result num
    end findDistToNextNewColor


    %-----------------------------------------
    %----- MAIN Procedure (Exported) ---------
    %-----------------------------------------

    function Render (R, G, B : array 1 .. * of nat1, N : array 1 .. * of nat1, width, height : int) : int
	const originalWindowSelect : int := Window.GetSelect ()

	%If first render... inishalize the render window
	setRenderWindow

	%select render window
	Window.Select (renderWinID)

	%set render window to match image size
	setscreen ("graphics:" + intstr (width) + ";" + intstr (height))
	cls

	    %----Start the rendering process----

	    %--- Render Vars---
	    var x : int := 0            %Like For loop counter for x row
	    var rgbI : int := 0         %interval counter for the RGB Array data
	    var nI : int := 1           %interval counter for the RGB Array data
	    var invisaWhite : boolean   %States if the color is wight enough to be transparent. (not drawn)
	    var xRemain : int           %The remaining x pixels in the row
	    var dist : int := 0         %Distance To New Color


	    %---Reads RGB Arrays and Renders Image---

	    for y : 1 .. height
		x := 0  %reset x for counter
		loop %fake x for loop
		    x += 1 %forLoop Like counter
		    exit when x > width  %forLoop Like Exit

		    if dist = 0 then
			rgbI += 1
			if (R (rgbI) >= clearlyBright and G (rgbI) >= clearlyBright and B (rgbI) >= clearlyBright) then
			    invisaWhite:= true  %Color Is White
			else
			    RGB.SetColor (255, R (rgbI) * 0.00390625, G (rgbI) * 0.00390625, B (rgbI) * 0.00390625)
			    invisaWhite:= false  %Color Is NOT White
			end if
			dist := findDistToNextNewColor (nI,N)
		    end if


		    xRemain := width - x
		    if dist <= xRemain then
			%Unique in this row
			if not invisaWhite then
			    %Draw Line or Dot to just before next new color
			    if dist = 1 then
				    Draw.Dot (x - 1, y - 1, 255)
				else
				    Draw.Line (x - 1, y - 1, (x - 1) + (dist), y - 1, 255)
			    end if
			end if
			%Jump x to before new color (will be incromented to it at start of loop)
			x := x + dist - 1
			%Your at the new color...
			dist := 0
		    else
			%Next Uniqe not in this row
			dist -= xRemain + 1
			if not invisaWhite then
			    %Draw line to edge
			    Draw.Line (x - 1, y - 1, width - 1, y - 1, 255)
			end if
			exit %Finsied X row... leave it
		    end if
		end loop %X
	    end for     %Y

	const picID : int := Pic.New (0, 0, width - 1, height - 1)

	%Restores Originaly selected Window
	Window.Select (originalWindowSelect)

	result picID

    end Render
	
end Engine
