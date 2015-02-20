%--------Embedded Image File (EI) 30 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 30 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   folder.bmp_EI.tu
%File Num:       30 of 81
%Original Image: folder.bmp
%Detentions:     36 by 36
%Mega-Pixels:    0.0001



unit

module FolderPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 36
    var height : int := 36
    var pixels : int := 1296


%RGB Color Channels
var R : array 1 .. 504 of nat1 := init(255,219,201,169,142,115,96,112,133,255,218,214,236,223,210,204,170,148,122,101,108,127,149,255,214,217,255,255,252,239,226,214,204,178,155,127,105,102,118,255,209,217,255,255,242,230,217,207,195,163,134,111,99,112,255,209,217,255,255,245,233,220,210,204,170,141,115,103,109,130,255,209,207,255,255,249,236,226,214,204,178,148,122,107,105,255,207,204,255,255,252,239,230,217,204,187,155,136,111,112,255,205,204,255,255,242,233,220,207,150,255,204,255,255,255,242,172,255,204,245,255,255,242,178,255,217,207,242,255,255,255,204,104,255,217,242,255,255,255,204,104,255,217,242,255,255,255,217,119,255,217,233,255,255,255,217,131,255,220,230,255,255,255,230,143,148,255,230,230,255,255,255,233,157,135,255,227,230,230,255,255,255,242,172,121,255,220,230,220,255,255,255,245,187,109,255,220,230,233,217,255,255,255,255,204,102,255,219,239,242,217,255,255,255,255,207,109,255,216,242,242,217,255,255,255,255,217,119,255,210,242,242,207,255,255,255,255,255,255,223,138,255,209,242,255,207,223,249,255,255,255,255,255,255,255,255,255,255,230,143,145,209,245,255,245,220,204,207,217,226,233,242,252,255,255,255,255,255,255,236,164,132,208,255,255,255,249,242,230,220,214,204,207,220,245,255,255,255,255,255,242,170,118,207,255,255,255,245,233,207,245,255,255,255,255,255,249,195,107,204,255,255,255,226,207,252,255,255,255,255,255,255,255,255,255,204,98,204,255,255,255,223,207,217,230,233,242,249,255,255,255,255,255,255,255,255,255,255,207,122,204,255,255,255,255,255,245,236,230,220,217,204,214,217,230,236,242,252,255,255,255,217,137,255,236,255,255,255,255,255,255,255,255,255,255,255,255,252,242,236,230,220,217,204,217,220,230,239,214,182,255,210,252,255,255,255,255,245,217,220,230,233,242,249,255,255,255,255,255,255,255,249,242,204,158,203,213,232,255,230,255,255,255,255,252,204,178,228,236,226,221,211,208,210,217,226,230,239,242,255,255,255,207,163,232,255,207,252,255,255,255,255,255,255,255,220,161,255,229,222,213,210,204,209,232,250,255,210,217,223,230,233,242,245,255,233,187,255,216,210,208,204,205,255)
var G : array 1 .. 504 of nat1 := init(255,194,154,135,115,103,96,112,133,255,193,169,201,173,160,153,132,119,106,98,108,127,149,255,185,174,229,209,206,192,178,164,153,136,122,108,99,102,118,255,171,174,231,212,198,183,168,157,148,129,111,101,99,112,255,171,174,236,215,204,188,173,161,153,132,114,103,100,109,130,255,171,158,238,218,210,194,182,165,153,136,118,106,101,105,255,169,153,239,221,217,200,188,170,153,142,122,113,102,112,255,157,153,239,224,207,194,176,156,120,255,153,240,230,227,191,134,255,153,224,233,230,191,136,255,169,157,219,235,233,204,153,104,255,170,219,237,236,204,153,101,255,170,221,241,239,204,179,107,255,171,204,243,242,204,179,111,255,176,199,245,245,204,204,117,148,255,190,199,246,248,204,210,124,135,255,211,191,199,247,251,204,230,134,121,255,195,191,182,248,254,204,236,142,109,255,195,192,197,176,248,255,204,255,153,102,255,194,208,210,177,250,255,204,255,159,103,255,191,214,210,177,248,255,204,255,179,107,255,176,215,213,159,249,252,254,255,204,255,191,114,255,171,216,234,158,189,237,249,251,251,252,253,254,255,255,204,255,204,116,145,171,223,238,221,180,153,159,177,195,208,226,244,250,251,255,255,204,255,217,129,132,170,241,242,243,232,221,199,181,170,153,159,184,233,252,255,255,204,255,230,132,118,169,242,246,248,231,207,159,233,253,255,255,204,255,242,148,107,153,244,251,254,197,159,247,253,254,254,254,255,255,255,204,255,153,98,153,245,253,255,191,159,178,204,210,229,241,254,254,254,255,255,255,255,255,204,255,159,109,153,247,251,255,254,255,236,217,204,185,179,153,172,178,204,216,229,248,254,242,255,178,120,255,213,249,255,255,254,249,249,250,251,252,253,254,255,249,230,217,204,185,179,153,179,185,204,223,172,159,255,165,244,253,255,255,251,232,177,183,202,208,226,238,250,251,252,253,253,254,255,242,230,153,133,166,181,229,255,203,252,255,255,253,246,163,172,219,223,204,196,173,167,165,178,196,203,221,227,252,252,253,159,163,232,255,159,247,253,254,254,254,255,254,253,184,145,255,211,197,179,172,153,178,232,250,255,166,179,191,204,210,230,236,255,210,149,255,184,172,167,153,161,255)
var B : array 1 .. 504 of nat1 := init(255,116,10,28,39,65,96,112,133,255,115,34,103,39,13,0,17,34,58,88,108,127,149,255,99,45,163,107,101,74,47,20,0,12,28,51,80,102,118,255,56,46,166,110,83,56,28,7,4,22,44,72,99,112,255,56,47,183,113,92,64,36,14,0,17,38,65,90,109,130,255,56,12,190,116,102,73,51,22,0,12,33,58,81,105,255,54,0,193,119,112,83,60,30,0,8,28,46,73,112,255,13,0,195,122,92,69,38,6,35,255,0,198,139,125,77,18,255,0,163,146,129,77,12,255,36,9,153,149,131,102,0,104,255,38,155,152,134,102,0,91,255,39,158,174,137,102,42,68,255,40,119,176,140,102,44,54,255,51,108,179,143,102,90,41,148,255,85,109,182,146,102,104,29,135,255,163,87,110,202,149,102,143,18,121,255,117,89,70,205,152,102,159,8,109,255,117,92,103,57,208,153,102,200,0,102,255,116,129,127,57,212,162,102,205,13,84,255,113,145,126,58,231,172,102,212,53,68,255,70,149,130,15,233,204,188,181,102,217,82,48,255,56,152,165,8,89,207,236,225,222,213,207,202,193,190,102,222,111,40,145,56,168,166,110,43,0,15,60,105,134,179,224,239,230,199,197,102,227,142,23,132,55,212,158,141,124,107,71,44,27,0,15,75,196,234,209,207,102,232,174,17,118,54,217,164,146,119,83,15,198,238,217,216,102,238,208,4,107,0,222,169,152,67,15,232,245,240,237,235,230,229,225,102,243,0,98,0,226,171,153,57,16,63,125,141,188,219,250,247,244,241,240,237,235,234,102,248,16,71,0,231,192,153,163,153,124,96,77,48,38,0,47,63,126,158,189,237,253,215,252,63,72,255,148,231,158,153,169,231,236,220,215,195,184,174,158,143,115,96,77,48,38,0,64,80,129,175,48,92,255,30,226,197,153,159,225,196,60,75,121,136,181,211,241,219,208,197,181,170,153,134,115,0,56,50,85,219,255,123,239,159,153,211,230,37,152,190,185,137,118,58,42,31,61,107,123,168,184,245,234,222,15,163,232,255,16,234,250,226,202,195,177,195,250,78,97,255,153,119,73,57,0,82,232,250,255,32,64,96,129,143,191,207,255,143,34,255,88,57,42,0,27,255)
%Compression Index
var N : array 1 .. 504 of nat1 := init(37,1,1,1,1,1,1,1,1,28,1,1,1,1,1,1,1,1,1,1,1,1,1,23,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,20,1,1,1,7,1,1,1,1,1,1,1,1,1,1,16,1,1,1,11,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,15,1,1,1,1,1,1,1,1,1,1,8,1,1,1,19,1,1,1,1,1,1,1,1,1,1,4,1,1,1,24,1,1,1,1,1,4,2,1,1,26,1,1,4,2,1,1,26,1,1,4,1,1,1,1,26,1,1,1,3,2,1,1,26,1,1,1,3,2,1,1,26,1,1,1,3,2,1,1,26,1,1,1,3,2,1,1,26,1,1,1,1,2,2,1,1,26,1,1,1,1,1,1,2,1,1,26,1,1,1,1,1,1,2,1,1,26,1,1,1,1,1,1,1,1,1,1,26,1,1,1,1,1,1,1,1,1,1,26,1,1,1,1,1,1,1,1,1,1,26,1,1,1,1,1,1,1,1,1,1,1,1,24,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,17,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,15,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,14,1,1,1,1,1,1,1,1,9,1,1,1,1,1,1,13,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,8,1,2,1,1,1,1,1,12,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,2,1,1,1,1,1,11,1,1,1,1,1,1,1,2,1,1,1,1,1,1,2,1,2,1,1,1,1,1,1,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,8,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,2,2,1,1,1,1,1,1,1,10,1,1,1,1,2,1,1,1,5,1,1,1,1,1,1,1,2,1,1,30,1,1,1,1,1,23)


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

end FolderPic