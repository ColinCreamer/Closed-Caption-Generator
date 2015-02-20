%--------Embedded Image File (EI) 15 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 11 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   cut16x.bmp_EI.tu
%File Num:       15 of 81
%Original Image: cut16x.bmp
%Detentions:     16 by 16
%Mega-Pixels:    0.00002



unit

module Cut16xPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 16
    var height : int := 16
    var pixels : int := 256


%RGB Color Channels
var R : array 1 .. 86 of nat1 := init(255,17,17,16,255,42,174,42,255,70,255,174,71,255,96,174,255,174,97,255,182,114,255,17,17,16,255,182,76,255,42,174,42,182,157,76,182,255,70,255,174,71,120,76,157,255,96,174,255,174,97,255,120,22,76,182,255,114,255,157,76,157,76,120,182,255,76,157,255,182,120,76,255,120,255,182,255,190,120,255,76,182,255,157,190,255)
var G : array 1 .. 86 of nat1 := init(255,94,94,93,255,108,197,108,255,124,255,197,124,255,139,197,255,197,139,255,190,149,255,94,94,93,255,190,95,255,108,197,108,190,167,95,190,255,124,255,197,124,135,95,167,255,139,197,255,197,139,255,135,49,95,190,255,149,255,167,95,167,95,135,190,255,95,167,255,190,135,95,255,135,255,190,255,195,135,255,95,190,255,167,195,255)
var B : array 1 .. 86 of nat1 := init(255,156,155,155,255,163,221,163,255,171,255,221,171,255,179,221,255,221,179,255,204,184,255,156,155,155,255,204,122,255,163,221,163,204,185,122,204,255,171,255,221,171,157,122,185,255,179,221,255,221,179,255,157,92,122,204,255,184,255,185,122,185,122,157,204,255,122,185,255,204,157,122,255,157,255,204,255,205,157,255,122,204,255,185,205,255)
%Compression Index
var N : array 1 .. 86 of nat1 := init(24,1,1,1,12,1,3,1,11,1,2,1,1,11,1,1,1,1,1,11,1,3,7,1,1,1,2,1,1,8,1,3,1,1,1,1,1,7,1,2,1,1,2,1,1,7,1,1,1,1,1,1,1,1,2,1,6,3,3,1,1,1,1,1,1,11,1,1,1,1,1,1,10,2,3,1,10,1,1,15,1,1,14,1,1,4)


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

end Cut16xPic
