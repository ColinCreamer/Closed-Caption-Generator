%--------Embedded Image File (EI) 61 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 2:00AM
%Compile Time: 12 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   rename16x.bmp_EI.tu
%File Num:       61 of 81
%Original Image: rename16x.bmp
%Detentions:     16 by 16
%Mega-Pixels:    0.00002



unit

module Rename16xPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 16
    var height : int := 16
    var pixels : int := 256


%RGB Color Channels
var R : array 1 .. 85 of nat1 := init(255,125,33,113,33,125,255,87,255,117,33,117,255,89,255,34,104,110,90,255,78,34,255,34,50,255,142,34,106,112,106,34,142,255,50,34,255,35,51,255,145,35,108,114,108,35,145,255,36,110,116,110,36,255,150,36,111,118,111,36,150,255,52,36,255,37,85,255,98,255,85,37,255,100,255,103,255,104,255,153,40,138,40,153,255)
var G : array 1 .. 85 of nat1 := init(255,126,33,114,33,126,255,88,255,118,33,118,255,90,255,34,105,112,91,255,79,34,255,35,50,255,144,35,107,113,107,35,144,255,50,35,255,35,51,255,146,35,109,115,109,35,146,255,36,111,117,111,36,255,151,37,113,119,113,37,151,255,53,37,255,37,86,255,100,255,86,37,255,101,255,104,255,106,255,154,40,140,40,154,255)
var B : array 1 .. 85 of nat1 := init(255,120,31,109,31,120,255,84,255,113,32,113,255,86,255,136,165,107,88,255,147,136,255,137,140,255,163,137,166,108,166,137,163,255,140,137,255,137,141,255,165,137,168,110,168,137,165,255,138,169,112,169,138,255,171,139,172,115,172,139,171,255,143,139,255,139,153,255,96,255,153,139,255,98,255,99,255,101,255,148,39,134,39,148,255)
%Compression Index
var N : array 1 .. 85 of nat1 := init(21,1,1,2,1,1,12,2,13,1,2,1,13,2,9,4,1,1,1,1,1,3,3,1,1,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,6,4,1,2,1,5,5,1,1,1,2,1,1,1,1,1,1,3,3,1,1,2,1,1,3,9,2,14,2,14,2,12,1,1,2,1,1,21)


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

end Rename16xPic
