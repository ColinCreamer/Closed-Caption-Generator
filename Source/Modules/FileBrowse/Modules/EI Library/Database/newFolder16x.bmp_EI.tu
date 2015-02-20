%--------Embedded Image File (EI) 50 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 2:00AM
%Compile Time: 12 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   newFolder16x.bmp_EI.tu
%File Num:       50 of 81
%Original Image: newFolder16x.bmp
%Detentions:     16 by 16
%Mega-Pixels:    0.00002



unit

module NewFolder16xPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 16
    var height : int := 16
    var pixels : int := 256


%RGB Color Channels
var R : array 1 .. 113 of nat1 := init(255,127,100,53,100,127,255,100,233,223,212,201,100,255,100,244,233,223,212,201,53,255,100,244,233,223,212,201,53,255,100,244,233,223,212,201,53,255,100,255,244,233,223,212,53,255,100,255,244,233,223,212,127,255,100,255,244,233,223,16,212,164,255,100,255,244,233,53,244,16,244,16,255,100,127,164,127,164,127,164,127,164,244,100,164,255,164,100,164,244,164,53,255,100,127,100,16,255,164,100,64,255,127,100,255,100,255,100,255,53,255,100,255)
var G : array 1 .. 113 of nat1 := init(255,123,99,52,99,123,255,99,230,219,206,194,99,255,99,243,230,219,206,194,52,255,99,243,230,219,206,194,52,255,99,243,230,219,206,194,52,255,99,255,243,230,219,206,52,255,99,255,243,230,219,206,123,255,99,255,243,230,219,16,206,158,255,99,255,243,230,52,243,16,243,16,255,99,123,158,123,158,123,158,123,158,243,99,158,255,158,99,158,243,158,52,255,99,123,99,16,255,158,99,64,255,123,99,255,99,255,99,255,52,255,99,255)
var B : array 1 .. 113 of nat1 := init(255,48,74,27,74,48,255,74,181,144,106,69,74,255,74,218,181,144,106,69,27,255,74,218,181,144,106,69,27,255,74,218,181,144,106,69,27,255,74,255,218,181,144,106,27,255,74,255,218,181,144,106,48,255,74,255,218,181,144,16,106,58,255,74,255,218,181,27,218,16,218,16,255,74,48,58,48,58,48,58,48,58,218,74,58,255,58,74,58,218,58,27,255,74,48,74,16,255,58,74,64,255,48,74,255,74,255,74,255,27,255,74,255)
%Compression Index
var N : array 1 .. 113 of nat1 := init(16,1,1,11,1,1,1,1,3,3,4,3,1,1,1,1,3,3,3,3,1,1,1,2,3,3,3,2,1,1,1,3,3,3,3,1,1,1,1,1,3,3,3,3,1,1,1,2,3,3,3,2,1,1,1,3,3,2,3,1,1,1,1,1,4,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,3,1,1,1,1,1,3,1,1,1,2,1,2,2,1,1,4,1,4,2,1,12,1,1,1,1,1,13,1,19)


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

end NewFolder16xPic
