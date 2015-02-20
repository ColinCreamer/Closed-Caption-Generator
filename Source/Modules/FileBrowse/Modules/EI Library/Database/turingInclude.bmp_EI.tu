%--------Embedded Image File (EI) 72 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 2:00AM
%Compile Time: 47 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   turingInclude.bmp_EI.tu
%File Num:       72 of 81
%Original Image: turingInclude.bmp
%Detentions:     47 by 47
%Mega-Pixels:    0.0002



unit

module TuringIncludePic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 47
    var height : int := 47
    var pixels : int := 2209


%RGB Color Channels
var R : array 1 .. 677 of nat1 := init(255,0,255,126,190,0,255,126,253,190,0,255,126,253,190,253,190,0,255,126,253,190,253,190,0,255,126,253,190,126,190,253,190,0,255,126,253,126,190,126,190,126,190,126,190,126,253,190,0,255,126,253,126,190,126,253,190,0,255,126,253,126,253,190,0,255,126,253,0,190,126,0,253,190,0,255,126,253,190,0,190,126,0,190,126,253,190,0,255,126,253,190,0,190,126,190,126,0,190,253,190,0,255,126,253,190,0,126,190,126,190,126,190,0,190,253,190,0,255,126,253,126,0,190,0,190,0,126,253,190,0,255,126,253,126,0,253,253,190,253,253,0,126,253,190,0,255,126,253,0,190,253,253,190,253,190,253,190,253,190,0,253,190,0,255,126,253,253,253,253,253,253,126,190,253,190,253,190,253,190,253,253,190,126,253,253,253,253,190,0,255,126,253,253,253,253,253,253,126,190,253,190,253,190,253,190,253,190,126,253,253,253,253,253,190,0,255,126,253,253,253,253,253,253,253,126,190,253,190,253,190,253,190,126,253,253,253,253,253,190,0,255,126,253,253,253,253,253,253,253,253,126,190,253,190,253,190,126,253,253,253,253,253,253,190,0,255,126,253,253,253,253,253,253,253,253,253,126,190,253,190,126,253,253,253,253,253,253,253,253,190,0,255,126,253,253,253,253,253,253,253,253,253,253,126,190,126,253,253,253,253,253,253,253,253,253,190,0,255,126,253,253,253,253,253,253,253,253,253,253,253,253,126,190,126,253,253,253,253,253,253,253,253,253,253,253,190,0,255,126,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,126,253,253,253,253,253,253,253,253,253,253,253,253,253,253,190,0,255,126,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,253,190,0,253,190,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,255,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,255,0,126,253,190,126,0,255,0,126,190,126,0,255,0,126,190,126,0,255,126,253,126,0,255,126,253,126,0,255,126,0,255)
var G : array 1 .. 677 of nat1 := init(255,0,255,126,190,0,255,126,253,190,0,255,126,253,190,253,190,0,255,126,253,190,253,190,0,255,126,253,190,126,190,253,190,0,255,126,253,126,190,126,190,126,190,126,190,126,253,190,0,255,126,253,126,190,126,253,190,0,255,126,253,126,253,190,0,255,126,253,0,190,126,0,253,190,0,255,126,253,190,0,190,126,0,190,126,253,190,0,255,126,253,190,0,190,126,190,126,0,190,253,190,0,255,126,253,190,0,126,190,126,190,126,190,0,190,253,190,0,255,126,253,126,0,190,0,190,0,126,253,190,0,255,126,253,126,0,253,0,190,0,253,0,126,253,190,0,255,126,253,0,190,253,0,190,253,190,0,190,253,190,0,253,190,0,255,126,253,0,253,0,253,0,126,190,253,190,0,190,253,190,0,253,190,126,0,253,0,253,190,0,255,126,253,253,0,253,0,253,126,190,253,190,0,190,0,190,253,190,126,0,253,0,253,253,190,0,255,126,253,0,253,0,253,0,253,126,190,253,190,0,190,253,190,126,253,0,253,0,253,190,0,255,126,253,253,0,253,0,253,0,253,126,190,253,190,253,190,126,253,0,253,0,253,253,190,0,255,126,253,0,253,0,253,0,253,0,253,126,190,253,190,126,0,253,0,253,0,253,0,253,190,0,255,126,253,253,0,253,0,253,0,253,0,253,126,190,126,0,253,0,253,0,253,0,253,253,190,0,255,126,253,0,253,0,253,0,253,0,253,0,253,0,126,190,126,253,0,253,0,253,0,253,0,253,0,253,190,0,255,126,253,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,0,253,0,253,0,253,0,253,0,253,0,253,253,190,0,255,126,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,253,190,0,253,190,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,255,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,255,0,126,253,190,126,0,255,0,126,190,126,0,255,0,126,190,126,0,255,126,253,126,0,255,126,253,126,0,255,126,0,255)
var B : array 1 .. 677 of nat1 := init(255,0,255,126,190,0,255,126,253,190,0,255,126,253,190,253,190,0,255,126,253,190,253,190,0,255,126,253,190,126,190,253,190,0,255,126,253,126,190,126,190,126,190,126,190,126,253,190,0,255,126,253,126,190,126,253,190,0,255,126,253,126,253,190,0,255,126,253,0,190,126,0,253,190,0,255,126,253,190,0,190,126,0,190,126,253,190,0,255,126,253,190,0,190,126,190,126,0,190,253,190,0,255,126,253,190,0,126,190,126,190,126,190,0,190,253,190,0,255,126,253,126,0,190,0,190,0,126,253,190,0,255,126,253,126,0,253,0,190,0,253,0,126,253,190,0,255,126,253,0,190,253,0,190,253,190,0,190,253,190,0,253,190,0,255,126,253,0,0,0,0,0,126,190,253,190,0,190,253,190,0,253,190,126,0,0,0,253,190,0,255,126,253,0,0,0,0,0,126,190,253,190,0,190,0,190,253,190,126,0,0,0,0,253,190,0,255,126,253,0,0,0,0,0,0,126,190,253,190,0,190,253,190,126,0,0,0,0,253,190,0,255,126,253,0,0,0,0,0,0,0,126,190,253,190,253,190,126,0,0,0,0,0,253,190,0,255,126,253,0,0,0,0,0,0,0,0,126,190,253,190,126,0,0,0,0,0,0,0,253,190,0,255,126,253,0,0,0,0,0,0,0,0,0,126,190,126,0,0,0,0,0,0,0,0,253,190,0,255,126,253,0,0,0,0,0,0,0,0,0,0,0,126,190,126,0,0,0,0,0,0,0,0,0,0,253,190,0,255,126,253,0,0,0,0,0,0,0,0,0,0,0,0,0,0,126,0,0,0,0,0,0,0,0,0,0,0,0,0,253,190,0,255,126,253,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,255,126,253,190,0,253,190,0,253,190,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,190,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,255,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,253,0,126,253,190,126,0,255,0,126,253,190,126,0,255,0,126,190,126,0,255,0,126,190,126,0,255,126,253,126,0,255,126,253,126,0,255,126,0,255)
%Compression Index
var N : array 1 .. 677 of nat1 := init(9,38,9,1,36,1,9,1,35,1,1,9,1,3,29,3,1,1,9,1,3,29,3,1,1,9,1,3,1,1,27,3,1,1,9,1,3,5,1,1,1,2,14,3,1,1,3,1,1,9,1,3,20,1,8,3,1,1,9,1,3,29,3,1,1,9,1,3,3,1,23,2,3,1,1,9,1,3,3,3,2,16,3,1,1,3,1,1,9,1,3,6,3,2,5,1,4,3,5,3,1,1,9,1,3,9,2,1,1,1,1,2,2,2,8,3,1,1,9,1,3,7,2,2,8,2,2,6,3,1,1,9,1,3,5,2,2,1,10,1,2,2,4,3,1,1,9,1,3,5,3,2,1,1,6,1,1,1,3,1,4,3,1,1,9,1,3,1,1,1,1,1,1,2,1,1,1,2,4,2,1,3,2,1,1,1,1,3,1,1,9,1,3,1,1,1,1,1,2,2,1,1,1,6,1,1,2,2,1,1,1,1,1,3,1,1,9,1,3,1,1,1,1,1,1,1,3,1,1,6,1,3,2,1,1,1,1,1,3,1,1,9,1,3,1,1,1,1,1,1,1,1,3,2,4,3,2,2,1,1,1,1,1,3,1,1,9,1,3,1,1,1,1,1,1,1,1,1,3,6,3,1,1,1,1,1,1,1,1,3,1,1,9,1,3,1,1,1,1,1,1,1,1,1,2,8,2,1,1,1,1,1,1,1,1,3,1,1,9,1,3,1,1,1,1,1,1,1,1,1,1,1,3,2,3,1,1,1,1,1,1,1,1,1,1,3,1,1,9,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,9,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,9,1,35,1,1,9,1,35,1,1,9,1,35,1,1,9,1,35,1,1,9,1,35,1,38,8,1,38,8,1,38,8,1,3,1,1,1,2,2,2,3,1,4,2,3,2,3,3,4,1,8,1,3,1,1,1,2,2,1,1,4,1,4,2,1,2,1,1,2,1,2,1,4,8,1,3,1,1,1,1,1,1,1,1,1,4,1,4,1,3,1,1,1,3,1,1,1,4,8,1,3,1,1,1,1,1,1,1,1,1,4,1,4,1,3,1,1,1,3,1,1,1,4,8,1,3,1,1,1,1,1,1,1,1,1,4,1,4,1,3,1,1,1,3,1,1,3,2,1,11,1,1,1,1,1,1,1,1,1,4,1,4,1,3,1,1,1,3,1,1,1,4,1,4,2,1,4,1,1,2,2,1,1,1,4,1,4,1,3,1,1,1,2,1,2,1,4,1,3,2,2,1,1,2,1,1,1,3,1,2,3,1,1,4,1,3,1,1,3,3,4,1,1,2,2,2,1,2,37,1,1,2,2,1,3,37,1,2,2,1,4,37,1,1,2,1,14,1,27,3,1,15,1,27,2,1,16,29,1,8)


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

end TuringIncludePic
