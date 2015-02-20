unit
%Icon Button Picture Genorator
%Colin Creamer
%August 3 2011

%This module will generate a pritty image for use on a picture button

/*
 Parameters:
 icoID       :       The picture ID of a 16x16 image
 btnWidth    :       the minimum width in pixels you want the button pic to be
 btnText     :       The text lable you want placed on the button pic
 */

module IcoBtnPic

    import /*GUI*/ "gui2.tu"

    export Generate, Gen, SetBackGrad

    var height : int := 19
    var gradientPicID : int
    const iconAreaWidth : int := 22

    %Font
    const font : int := Font.New ("Arial:9")


    proc SetBackGrad (picID : int)
	gradientPicID := picID
	height := Pic.Height (picID)
    end SetBackGrad


    proc drawIndentLine (x, y, h : int)
	Draw.Line (x, y, x, y + h, grey)
	Draw.Line (x + 1, y, x + 1, y + h, darkgrey)
    end drawIndentLine


    function Generate (icoID : int, btnWidth : int, btnText : string) : int
	const icoWidth : int := Pic.Width (icoID)
	const icoHeight : int := Pic.Height (icoID)
	%Draw Gradient Bacground
	for x : 1 .. btnWidth
	    Pic.Draw (gradientPicID, x, 1, picCopy)
	end for
	%Calculate and draw Icon
	const centerIcoX : int := ceil ((iconAreaWidth / 2) - (icoWidth / 2))
	const centerIcoY : int := ceil ((height / 2) - (icoHeight / 2))
	Pic.Draw (icoID, centerIcoX, centerIcoY, picMerge)
	%Draw seperator Line
	drawIndentLine (iconAreaWidth, 2, height - 4)
	%Draw Label
	const btnLable : int := GUI.CreateLabelFull (iconAreaWidth, 1, btnText, (btnWidth - iconAreaWidth) + 2, height + 3, GUI.CENTER + GUI.MIDDLE, font)
	%Save Pic
	const newBtnPicID : int := Pic.New (1, 1, btnWidth, height)
	%Finish up
	GUI.Dispose (btnLable)
	result newBtnPicID
    end Generate

    %ShortForm for Generate()
    fcn Gen (icoID, btnWidth : int, btnText : string) : int
	result Generate (icoID, btnWidth, btnText)
    end Gen

end IcoBtnPic
