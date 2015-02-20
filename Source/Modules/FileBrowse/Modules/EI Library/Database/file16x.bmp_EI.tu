%--------Embedded Image File (EI) 25 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 10 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   file16x.bmp_EI.tu
%File Num:       25 of 81
%Original Image: file16x.bmp
%Detentions:     12 by 14
%Mega-Pixels:    0.00001



unit

module File16xPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 12
    var height : int := 14
    var pixels : int := 168


%RGB Color Channels
var R : array 1 .. 41 of nat1 := init(71,76,253,78,253,81,253,84,253,88,253,90,253,93,253,97,253,97,253,76,99,253,84,244,78,101,253,88,244,78,255,101,253,88,244,84,255,101,93,90,255)
var G : array 1 .. 41 of nat1 := init(72,75,253,78,253,81,253,84,253,88,253,90,253,93,253,96,253,96,253,75,99,253,84,244,78,101,253,88,244,78,255,101,253,88,244,84,255,101,93,90,255)
var B : array 1 .. 41 of nat1 := init(71,75,253,78,253,82,253,84,253,88,253,91,253,93,253,96,253,96,253,75,99,253,84,244,78,101,253,88,244,78,255,101,253,88,244,84,255,101,93,91,255)
%Compression Index
var N : array 1 .. 41 of nat1 := init(12,1,10,2,10,2,10,2,10,2,10,2,10,2,10,2,10,2,6,5,1,6,1,3,1,1,6,1,2,1,1,1,6,1,1,1,2,7,1,1,3)


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

end File16xPic
