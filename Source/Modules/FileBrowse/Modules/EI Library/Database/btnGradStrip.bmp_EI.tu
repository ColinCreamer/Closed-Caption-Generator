%--------Embedded Image File (EI) 8 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 68 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   btnGradStrip.bmp_EI.tu
%File Num:       8 of 81
%Original Image: btnGradStrip.bmp
%Detentions:     1 by 19
%Mega-Pixels:    0.000001



unit

module BtnGradStripPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 1
    var height : int := 19
    var pixels : int := 19


%RGB Color Channels
var R : array 1 .. 17 of nat1 := init(152,168,170,171,174,177,180,183,186,189,193,197,200,204,207,210,205)
var G : array 1 .. 17 of nat1 := init(153,170,172,174,176,179,182,185,188,192,195,199,203,206,209,213,206)
var B : array 1 .. 17 of nat1 := init(148,162,164,166,169,171,174,177,181,184,188,191,195,198,202,205,202)
%Compression Index
var N : array 1 .. 17 of nat1 := init(1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)


    function Width () : int
        result width
    end Width

    function Height () : int
        result height
    end Height

    function Pixels () : int
        result pixels
    end Pixels



    function IsRendered () : boolean
        result rendered
    end IsRendered

    procedure Render
        %Only render once
        if not rendered then

            picID := Engine.Render(R,G,B,N,width,height)

            rendered := true
        end if
    end Render


    function ID () : int
        if not rendered then
            Render
        end if
        result picID
    end ID

end BtnGradStripPic
