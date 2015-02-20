%--------Embedded Image File (EI) 13 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 14 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   Copy16x.bmp_EI.tu
%File Num:       13 of 81
%Original Image: Copy16x.bmp
%Detentions:     16 by 16
%Mega-Pixels:    0.00002



unit

module Copy16xPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 16
    var height : int := 16
    var pixels : int := 256


%RGB Color Channels
var R : array 1 .. 75 of nat1 := init(255,76,255,76,253,76,255,76,253,76,253,76,255,76,76,253,76,255,76,253,76,253,76,253,76,255,76,253,76,76,253,76,255,76,253,76,253,76,253,76,255,76,253,76,76,253,76,244,76,255,76,253,76,253,76,255,76,253,76,253,76,76,255,76,253,76,244,76,255,76,253,76,255,76,255)
var G : array 1 .. 75 of nat1 := init(255,76,255,76,253,76,255,76,253,76,253,76,255,76,76,253,76,255,76,253,76,253,76,253,76,255,76,253,76,76,253,76,255,76,253,76,253,76,253,76,255,76,253,76,76,253,76,244,76,255,76,253,76,253,76,255,76,253,76,253,76,76,255,76,253,76,244,76,255,76,253,76,255,76,255)
var B : array 1 .. 75 of nat1 := init(255,166,255,166,253,166,255,166,253,76,253,166,255,76,166,253,166,255,76,253,166,253,76,253,166,255,76,253,76,166,253,166,255,76,253,166,253,76,253,166,255,76,253,76,166,253,166,244,166,255,76,253,166,253,166,255,76,253,76,253,76,166,255,76,253,76,244,76,255,76,253,76,255,76,255)
%Compression Index
var N : array 1 .. 75 of nat1 := init(22,9,7,1,7,1,7,1,1,5,1,1,1,6,1,7,1,1,1,5,1,1,5,1,1,1,1,1,4,1,7,1,1,1,5,1,1,2,1,4,1,1,1,4,1,4,1,1,1,2,1,5,1,4,2,3,1,1,2,1,1,6,4,1,4,1,1,1,8,1,4,2,9,6,42)


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

end Copy16xPic
