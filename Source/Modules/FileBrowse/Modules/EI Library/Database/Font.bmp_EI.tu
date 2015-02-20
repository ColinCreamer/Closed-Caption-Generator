%--------Embedded Image File (EI) 31 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 53 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   Font.bmp_EI.tu
%File Num:       31 of 81
%Original Image: Font.bmp
%Detentions:     48 by 48
%Mega-Pixels:    0.0002



unit

module FontPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 48
    var height : int := 48
    var pixels : int := 2304


%RGB Color Channels
var R : array 1 .. 829 of nat1 := init(255,101,255,99,90,86,81,77,101,255,99,204,202,152,77,101,255,99,205,211,208,203,195,193,187,179,171,163,202,81,101,255,99,205,211,208,203,195,193,187,179,171,163,202,81,101,255,99,205,211,218,211,208,203,195,193,187,179,171,163,202,81,101,255,99,205,218,211,208,203,195,193,187,179,171,163,202,81,101,255,99,215,218,211,208,203,195,193,187,179,171,195,86,101,255,99,215,218,211,208,203,195,193,187,179,171,195,86,101,255,99,215,218,225,144,131,144,203,195,193,131,195,86,101,255,105,215,225,227,144,131,144,208,203,195,131,195,90,101,255,107,215,225,213,196,204,196,166,177,211,208,203,195,175,184,167,166,150,136,152,182,90,101,255,107,215,227,215,184,204,251,166,168,206,211,208,203,180,168,166,184,167,155,150,144,154,179,182,90,101,255,107,215,227,183,251,184,131,131,211,208,203,195,188,184,167,155,150,131,152,179,182,99,101,255,107,215,227,234,227,228,204,244,141,131,173,218,211,208,203,166,184,167,150,138,131,179,187,179,182,99,101,255,111,215,234,227,177,251,169,131,173,169,168,184,167,150,131,152,187,179,182,99,101,255,111,215,234,227,215,218,234,138,131,169,203,184,167,141,131,187,182,99,101,255,111,215,234,227,177,251,204,203,194,184,167,150,131,144,195,193,187,193,182,99,101,255,115,215,234,215,218,251,204,209,194,184,167,141,131,187,195,193,187,193,182,99,101,255,115,215,237,243,234,177,251,169,131,218,211,194,209,194,184,150,131,144,195,193,193,182,99,101,255,115,228,237,243,234,215,234,133,131,195,218,169,218,209,184,143,131,187,203,195,193,182,99,101,255,115,228,237,243,234,179,251,154,131,138,225,218,194,218,203,184,166,131,144,203,195,193,182,99,101,255,115,228,243,243,234,207,234,218,136,131,193,225,218,169,226,218,203,184,146,131,187,203,195,193,182,99,101,255,122,228,243,253,243,234,179,251,154,131,138,227,187,226,218,203,167,131,144,211,208,203,195,193,167,108,101,255,122,228,243,253,243,234,214,234,204,131,131,195,184,234,226,209,194,146,131,193,211,208,203,189,167,108,101,255,122,228,253,243,234,179,251,146,131,141,244,234,226,209,167,131,144,211,208,203,189,167,108,101,255,122,235,253,243,234,200,244,196,134,184,251,234,218,209,154,131,203,218,211,208,203,189,167,108,101,255,129,235,253,243,237,184,244,150,244,251,234,218,184,136,152,218,211,208,203,189,167,115,101,255,129,235,253,243,197,244,251,244,234,218,154,131,195,218,211,208,189,167,115,101,255,131,235,253,243,237,184,251,244,234,196,136,138,227,225,218,211,189,167,115,101,255,131,235,253,243,197,244,251,244,226,154,131,193,227,225,218,211,189,167,115,101,255,131,235,253,243,237,196,251,244,209,133,138,227,225,218,211,189,167,115,101,255,134,243,253,243,183,251,234,169,131,193,234,227,225,218,211,189,156,115,101,255,134,243,253,243,235,196,209,138,138,234,227,225,218,211,189,156,115,101,255,131,243,253,243,233,233,234,227,225,218,211,189,156,115,101,255,131,243,253,243,234,227,225,218,189,156,124,101,255,138,243,253,243,234,227,182,167,156,124,101,255,138,243,253,243,234,227,136,133,111,99,101,255,144,253,243,234,107,83,0,0,0,0,0,24,101,255,144,253,243,234,107,152,83,67,50,38,52,101,255,144,253,243,234,107,163,83,67,72,101,255,152,253,243,234,111,173,98,83,90,101,255,152,253,243,234,111,184,115,105,101,255,152,253,243,111,194,122,101,255,152,253,243,237,235,115,182,101,255,152,178,177,173,169,167,161,155,153,148,146,115,144,255)
var G : array 1 .. 829 of nat1 := init(255,101,255,101,90,87,81,77,101,255,101,204,202,197,77,101,255,101,205,232,229,229,224,221,221,217,212,209,202,81,101,255,101,205,232,229,229,224,221,221,217,212,209,202,81,101,255,101,205,232,236,232,229,229,224,221,221,217,212,209,202,81,101,255,101,205,236,232,229,229,224,221,221,217,212,209,202,81,101,255,101,215,236,232,229,229,224,221,221,217,212,195,87,101,255,101,215,236,232,229,229,224,221,221,217,212,195,87,101,255,101,215,236,237,187,180,187,229,224,221,180,195,87,101,255,109,215,237,241,187,180,187,229,229,224,180,195,90,101,255,115,215,237,203,21,24,21,171,209,232,229,229,224,112,23,19,10,8,3,197,182,90,101,255,115,215,241,215,49,24,48,10,39,202,232,229,229,132,39,10,23,19,16,8,26,36,217,182,90,101,255,115,215,241,81,48,23,174,180,232,229,229,224,182,23,19,16,17,180,197,217,182,101,101,255,115,215,241,244,241,228,24,44,89,180,208,236,232,229,229,45,23,19,8,119,180,217,221,217,182,101,101,255,122,215,244,241,52,48,23,180,208,204,140,23,19,8,180,197,221,217,182,101,101,255,122,215,244,241,194,35,41,119,180,23,31,23,19,89,180,221,182,101,101,255,122,215,244,241,52,48,24,31,28,23,19,8,174,187,224,221,221,212,182,101,101,255,133,215,244,194,35,48,24,33,28,23,19,89,180,221,224,221,221,212,182,101,101,255,133,215,240,249,244,52,48,23,180,236,232,157,33,28,23,8,174,187,224,221,212,182,101,101,255,133,228,240,249,244,194,41,137,180,217,236,23,35,33,23,79,180,221,229,224,212,182,101,101,255,133,228,240,249,244,29,48,36,180,184,237,236,157,35,31,23,10,162,187,229,224,212,182,101,101,255,133,228,243,249,244,163,41,35,145,180,221,237,236,23,40,35,31,23,59,180,221,229,224,212,182,101,101,255,147,228,243,253,249,244,29,48,42,180,184,241,116,40,35,31,19,162,187,232,229,229,224,212,166,112,101,255,147,228,243,253,249,244,167,41,24,162,180,217,23,41,40,33,28,59,180,221,232,229,229,203,166,112,101,255,147,228,253,249,244,29,48,59,180,89,44,41,40,33,19,162,187,232,229,229,203,166,112,101,255,147,235,253,249,244,137,44,21,168,23,48,41,35,33,42,180,229,236,232,229,229,203,166,112,101,255,157,235,253,249,240,23,44,17,44,48,41,35,23,145,197,236,232,229,229,203,166,120,101,255,157,235,253,249,123,44,48,44,41,35,36,180,217,236,232,229,203,166,120,101,255,162,235,253,249,240,23,48,44,41,21,145,184,241,237,236,232,203,166,120,101,255,162,235,253,249,123,44,48,44,40,36,180,221,241,237,236,232,203,166,120,101,255,162,235,253,249,240,21,48,44,33,137,184,241,237,236,232,203,166,120,101,255,168,243,253,249,81,48,41,23,180,221,244,241,237,236,232,203,157,120,101,255,168,243,253,249,235,21,33,119,184,244,241,237,236,232,203,157,120,101,255,174,243,253,249,216,224,244,241,237,236,232,203,157,120,101,255,174,243,253,249,244,241,237,236,203,157,130,101,255,178,243,253,249,244,241,182,166,157,130,101,255,178,243,253,249,244,241,145,137,122,101,101,255,187,253,249,244,115,181,153,143,133,121,111,101,101,255,187,253,249,244,115,197,181,176,169,165,135,101,255,187,253,249,244,115,209,181,176,147,101,255,197,253,249,244,122,224,187,181,155,101,255,197,253,249,244,122,235,192,161,101,255,197,253,249,122,245,168,101,255,197,253,243,240,235,133,211,101,255,197,213,209,208,204,196,187,179,166,163,158,133,154,255)
var B : array 1 .. 829 of nat1 := init(255,101,255,151,141,138,133,127,101,255,151,242,254,245,127,101,255,151,205,254,254,254,254,251,254,254,254,255,254,133,101,255,151,205,254,254,254,254,251,254,254,254,255,254,133,101,255,151,205,254,254,254,254,254,254,251,254,254,254,255,254,133,101,255,151,205,254,254,254,254,254,251,254,254,254,255,254,133,101,255,151,215,254,254,254,254,254,251,254,254,254,255,138,101,255,151,215,254,254,254,254,254,251,254,254,254,255,138,101,255,151,215,254,251,236,235,236,254,254,251,235,255,138,101,255,161,215,251,254,236,235,236,254,254,254,235,255,141,101,255,166,215,251,211,0,0,0,204,244,254,254,254,254,126,0,0,0,0,0,245,254,141,101,255,166,215,254,215,41,0,0,0,39,219,254,254,254,148,39,0,0,0,0,0,33,43,254,254,141,101,255,166,215,254,84,0,0,227,235,254,254,254,254,205,0,0,0,21,235,245,254,254,151,101,255,166,215,254,253,254,229,0,0,116,235,245,254,254,254,254,48,0,0,0,156,235,254,254,254,254,151,101,255,176,215,253,254,48,0,18,235,245,243,165,0,0,0,235,245,254,254,254,151,101,255,176,215,253,254,204,0,0,156,235,18,0,0,0,116,235,254,254,151,101,255,176,215,253,254,48,0,0,0,0,0,0,0,227,236,254,251,254,254,254,151,101,255,184,215,253,204,0,0,0,0,0,0,0,116,235,254,254,251,254,254,254,151,101,255,184,215,245,254,253,48,0,18,235,254,254,170,0,0,0,0,227,236,254,251,254,254,151,101,255,184,229,245,254,253,204,0,180,235,243,254,18,0,0,0,103,235,254,254,254,254,254,151,101,255,184,229,245,254,253,20,0,43,235,236,251,254,170,0,0,0,0,213,236,254,254,254,254,151,101,255,184,229,244,254,253,170,0,0,186,235,251,251,254,18,0,0,0,0,77,235,254,254,254,254,254,151,101,255,198,229,244,254,254,253,20,0,51,235,236,254,123,0,0,0,0,213,236,254,254,254,254,254,253,159,101,255,198,229,244,254,254,253,170,0,0,213,235,243,0,0,0,0,0,77,235,251,254,254,254,253,253,159,101,255,198,229,254,254,253,20,0,77,235,116,0,0,0,0,0,213,236,254,254,254,253,253,159,101,255,198,236,254,254,253,141,0,0,219,0,0,0,0,0,51,235,254,254,254,254,254,253,253,159,101,255,208,236,254,254,245,0,0,21,0,0,0,0,0,186,245,254,254,254,254,253,253,166,101,255,208,236,254,254,126,0,0,0,0,0,43,235,243,254,254,254,253,253,166,101,255,213,236,254,254,245,0,0,0,0,0,186,236,254,251,254,254,253,253,166,101,255,213,236,254,254,126,0,0,0,0,43,235,251,254,251,254,254,253,253,166,101,255,213,236,254,254,245,0,0,0,0,180,236,254,251,254,254,253,253,166,101,255,219,244,254,254,84,0,0,18,235,251,253,254,251,254,254,253,253,166,101,255,219,244,254,254,236,0,0,156,236,253,254,251,254,254,253,253,166,101,255,227,244,254,254,219,230,253,254,251,254,254,253,253,166,101,255,227,244,254,254,253,254,251,254,253,253,172,101,255,229,244,254,254,253,254,254,253,253,172,101,255,229,244,254,254,253,254,186,180,176,151,101,255,236,254,254,253,166,254,255,245,235,224,214,191,101,255,236,254,254,253,166,245,254,255,255,252,217,101,255,236,254,254,253,166,255,254,255,219,101,255,245,254,254,253,176,255,255,254,221,101,255,245,254,254,253,176,255,255,222,101,255,245,254,254,176,255,224,101,255,245,254,244,245,236,184,235,101,255,245,250,244,245,243,233,224,218,212,202,197,184,170,255)
%Compression Index
var N : array 1 .. 829 of nat1 := init(103,35,12,1,5,2,24,3,1,12,1,1,31,1,1,1,12,1,1,2,1,3,5,1,6,5,4,4,1,1,1,12,1,1,5,1,4,4,1,4,5,4,3,1,1,1,12,1,1,1,1,4,1,4,4,1,4,5,4,2,1,1,1,12,1,1,3,4,1,4,4,1,4,5,4,1,1,1,1,12,1,1,4,4,1,4,4,1,4,5,4,1,1,1,12,1,1,5,4,1,4,4,1,4,5,3,1,1,1,12,1,1,1,1,1,7,1,4,4,1,11,1,1,1,12,1,1,1,1,1,7,1,1,4,4,11,1,1,1,12,1,1,1,1,1,5,1,1,1,1,1,4,1,1,2,1,2,3,2,2,1,1,1,12,1,1,1,1,2,1,1,1,2,1,3,1,4,1,2,1,1,1,1,1,2,1,2,1,1,1,12,1,1,4,1,1,1,1,1,5,1,4,1,1,2,1,1,1,1,1,3,1,1,1,12,1,1,1,1,2,1,1,1,1,1,1,1,4,1,4,1,2,1,1,1,1,1,1,2,1,1,1,12,1,1,3,2,1,1,1,2,3,6,1,3,1,1,1,1,3,1,1,1,1,12,1,1,4,1,1,1,1,1,10,1,1,1,2,1,1,5,1,1,1,12,1,1,5,1,1,1,11,1,1,1,1,1,1,1,1,1,2,1,1,1,1,12,1,1,6,1,1,1,9,2,1,1,1,1,1,1,2,1,1,1,1,1,1,12,1,1,1,1,5,1,1,1,2,4,1,1,2,1,1,1,1,1,4,1,1,1,1,1,12,1,1,1,2,4,1,2,1,1,1,4,1,1,1,2,1,1,1,1,4,1,1,1,1,12,1,1,1,3,4,1,1,1,1,1,1,2,1,2,1,1,1,1,1,3,3,1,1,1,1,12,1,1,1,4,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,2,1,1,1,1,12,1,1,1,1,4,3,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,4,1,1,1,1,1,12,1,1,1,2,4,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,4,1,1,1,1,12,1,1,4,4,2,1,1,1,1,1,1,1,1,1,1,1,1,4,1,3,1,1,1,1,12,1,1,5,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,2,1,1,1,1,12,1,1,6,4,1,1,1,1,1,1,1,1,1,1,1,3,4,1,1,1,1,1,1,12,1,1,7,4,1,2,1,1,1,1,1,1,1,4,4,1,1,1,1,1,12,1,1,8,3,1,1,2,1,1,1,1,1,1,1,4,4,1,1,1,1,12,1,1,9,3,1,1,1,1,1,1,1,1,2,1,4,3,1,1,1,1,12,1,1,10,2,1,1,1,1,1,1,1,4,1,4,2,1,1,1,1,12,1,1,11,2,1,1,1,1,1,1,1,4,1,4,1,1,1,1,1,12,1,1,12,1,1,1,1,1,1,3,3,1,4,1,1,1,1,1,12,1,1,13,1,1,1,4,3,2,4,1,1,1,1,1,12,1,1,14,2,5,3,2,4,1,1,1,1,12,1,1,14,3,5,3,4,2,1,1,1,12,1,1,14,4,5,1,2,5,1,1,1,12,1,16,4,5,1,1,1,1,1,1,1,1,1,13,1,17,4,4,1,1,1,1,1,1,1,1,14,1,18,4,3,1,1,2,1,1,1,15,1,19,4,2,1,1,1,1,1,1,16,1,20,4,1,1,1,1,1,1,17,1,21,4,1,1,1,1,18,1,13,7,1,4,1,1,1,19,1,2,1,1,1,6,3,3,3,3,2,1,1,14)


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

end FontPic
