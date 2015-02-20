%--------Embedded Image File (EI) 2 of 6 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Monday February 27th, 2012 at 4:11AM
%Compile Time: 67 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   Brackets.bmp_EI.tu
%File Num:       2 of 6
%Original Image: Brackets.bmp
%Detentions:     107 by 17
%Mega-Pixels:    0.0001



unit

module BracketsPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 107
    var height : int := 17
    var pixels : int := 1819


%RGB Color Channels
var R : array 1 .. 109 of nat1 := init(159,110,159,255,159,110,159,110,74,110,255,110,74,110,78,110,159,255,159,110,78,110,83,110,255,110,83,110,89,110,255,110,89,110,95,110,255,110,95,110,101,110,255,110,101,110,108,110,255,110,108,110,115,110,255,110,115,110,121,110,255,110,121,110,129,110,255,110,129,110,135,110,255,110,135,110,140,110,255,110,140,110,145,110,255,110,145,110,150,110,159,255,159,110,150,110,153,110,255,110,153,110,159,110,159,255,159,110,159)
var G : array 1 .. 109 of nat1 := init(154,107,154,255,154,107,154,107,73,107,255,107,73,107,77,107,154,255,154,107,77,107,82,107,255,107,82,107,87,107,255,107,87,107,94,107,255,107,94,107,100,107,255,107,100,107,107,107,255,107,107,107,113,107,255,107,113,107,119,107,255,107,119,107,126,107,255,107,126,107,133,107,255,107,133,107,138,107,255,107,138,107,144,107,255,107,144,107,148,107,154,255,154,107,148,107,151,107,255,107,151,107,154,107,154,255,154,107,154)
var B : array 1 .. 109 of nat1 := init(154,107,154,255,154,107,154,107,73,107,255,107,73,107,77,107,154,255,154,107,77,107,82,107,255,107,82,107,87,107,255,107,87,107,94,107,255,107,94,107,100,107,255,107,100,107,107,107,255,107,107,107,113,107,255,107,113,107,119,107,255,107,119,107,126,107,255,107,126,107,133,107,255,107,133,107,138,107,255,107,138,107,144,107,255,107,144,107,148,107,154,255,154,107,148,107,151,107,255,107,151,107,154,107,154,255,154,107,154)
%Compression Index
var N : array 1 .. 109 of nat1 := init(1,6,1,91,1,6,1,1,6,1,91,1,6,2,1,5,1,91,1,5,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,1,101,1,1,2,1,5,1,91,1,5,1,2,6,1,91,1,6,1,1,6,1,91,1,6,1)


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

end BracketsPic
