%--------Embedded Image File (EI) 26 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 10 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   fileCorupt16x.bmp_EI.tu
%File Num:       26 of 81
%Original Image: fileCorupt16x.bmp
%Detentions:     15 by 14
%Mega-Pixels:    0.00002



unit

module FileCorupt16xPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 15
    var height : int := 14
    var pixels : int := 210


%RGB Color Channels
var R : array 1 .. 94 of nat1 := init(163,71,255,163,255,76,255,163,253,195,253,78,255,195,78,255,195,163,253,195,253,81,255,195,185,253,237,253,84,255,84,253,195,253,88,255,88,253,195,253,163,195,90,237,253,185,253,185,255,93,253,185,195,253,163,253,163,97,255,195,97,253,97,255,195,237,253,76,255,195,253,84,240,237,234,78,255,101,253,88,243,240,78,255,101,253,88,245,84,255,101,93,90,255)
var G : array 1 .. 94 of nat1 := init(72,72,255,72,255,75,255,72,253,195,253,78,255,195,78,255,195,72,253,195,253,81,255,195,121,253,27,253,84,255,84,253,195,253,88,255,88,253,195,253,72,195,90,27,253,121,253,121,255,93,253,121,195,253,72,253,72,96,255,195,96,253,96,255,195,27,253,75,255,195,253,84,240,237,234,78,255,101,253,88,243,240,78,255,101,253,88,245,84,255,101,93,90,255)
var B : array 1 .. 94 of nat1 := init(164,71,255,164,255,75,255,164,253,195,253,78,255,195,78,255,195,164,253,195,253,82,255,195,86,253,35,253,84,255,84,253,195,253,88,255,88,253,195,253,164,195,91,35,253,86,253,86,255,93,253,86,195,253,164,253,164,96,255,195,96,253,96,255,195,35,253,75,255,195,253,84,240,238,234,78,255,101,253,88,243,240,78,255,101,253,88,245,84,255,101,93,91,255)
%Compression Index
var N : array 1 .. 94 of nat1 := init(4,10,1,1,1,1,1,2,5,1,1,1,2,1,1,1,1,1,4,1,2,1,3,2,4,3,1,1,1,2,1,4,2,4,1,3,1,4,1,4,1,4,1,1,1,1,7,1,4,1,1,2,1,1,1,3,1,1,3,1,1,10,1,2,2,1,5,5,3,1,6,1,1,1,1,1,3,1,6,1,1,1,1,3,1,6,1,1,1,5,7,1,1,4)


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

end FileCorupt16xPic
