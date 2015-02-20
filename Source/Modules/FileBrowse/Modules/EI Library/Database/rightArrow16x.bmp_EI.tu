%--------Embedded Image File (EI) 62 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 2:00AM
%Compile Time: 12 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   rightArrow16x.bmp_EI.tu
%File Num:       62 of 81
%Original Image: rightArrow16x.bmp
%Detentions:     16 by 16
%Mega-Pixels:    0.00002



unit

module RightArrow16xPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 16
    var height : int := 16
    var pixels : int := 256


%RGB Color Channels
var R : array 1 .. 72 of nat1 := init(255,179,255,112,124,197,255,111,6,84,181,255,116,20,16,37,167,192,255,118,19,32,25,20,108,196,255,120,15,26,34,31,19,61,174,255,122,13,18,21,22,14,56,171,255,123,9,15,10,16,116,199,255,125,2,4,43,169,193,255,122,0,100,187,255,136,145,199,255,189,194,255)
var G : array 1 .. 72 of nat1 := init(255,178,255,109,122,197,255,109,2,81,181,255,114,16,12,34,165,191,255,117,17,28,21,17,105,196,255,119,13,24,30,27,15,57,173,255,120,11,16,19,20,11,53,171,255,122,8,14,9,14,113,199,255,123,1,3,41,169,193,255,121,0,99,186,255,134,144,199,255,189,194,255)
var B : array 1 .. 72 of nat1 := init(255,180,255,115,126,197,255,114,11,87,182,255,118,25,22,43,169,192,255,120,23,37,30,27,111,196,255,122,17,29,38,36,24,65,175,255,124,15,20,23,25,18,59,172,255,125,11,17,12,18,117,199,255,127,2,5,45,171,193,255,124,0,102,187,255,137,147,199,255,190,194,255)
%Compression Index
var N : array 1 .. 72 of nat1 := init(37,1,15,1,1,1,13,1,1,1,1,12,1,1,1,1,1,1,10,1,1,1,1,1,1,1,9,1,1,1,1,1,1,1,1,8,1,1,1,1,1,1,1,1,8,1,1,1,1,1,1,1,9,1,1,1,1,1,1,10,1,1,1,1,12,1,1,1,13,1,1,41)


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

end RightArrow16xPic
