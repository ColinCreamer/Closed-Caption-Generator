%--------Embedded Image File (EI) 60 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 2:00AM
%Compile Time: 21 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   Refresh.bmp_EI.tu
%File Num:       60 of 81
%Original Image: Refresh.bmp
%Detentions:     29 by 27
%Mega-Pixels:    0.00007



unit

module RefreshPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 29
    var height : int := 27
    var pixels : int := 783


%RGB Color Channels
var R : array 1 .. 727 of nat1 := init(209,213,215,222,205,209,213,216,220,223,222,212,156,90,113,161,185,189,187,190,158,198,217,222,224,221,218,215,211,207,203,199,229,210,214,218,221,224,223,207,125,115,173,214,229,225,224,224,221,189,165,220,225,228,226,223,220,216,212,208,203,226,213,217,221,223,221,202,123,168,216,236,243,240,243,241,238,229,198,154,224,228,232,230,227,223,219,215,211,206,226,217,221,222,223,209,122,196,232,242,244,243,237,234,231,236,217,164,186,228,234,237,234,231,228,224,220,215,210,226,219,216,214,199,119,204,234,243,245,240,209,193,195,201,175,138,92,206,235,239,232,216,205,217,221,223,218,213,226,221,164,129,95,169,227,245,247,239,193,100,86,106,117,129,140,163,231,245,240,217,183,138,182,218,215,221,217,226,218,133,175,162,198,241,247,244,214,84,89,179,224,217,220,227,246,253,249,229,219,132,63,105,151,218,224,219,226,215,138,228,224,237,248,250,233,177,151,242,255,255,254,255,255,253,241,221,215,63,150,187,154,205,223,222,226,199,186,237,241,247,250,250,235,158,215,239,218,194,215,228,202,255,252,230,229,147,166,211,223,179,175,224,223,226,182,208,238,245,249,252,252,240,205,177,224,134,218,223,209,195,191,243,224,227,75,224,234,230,215,160,224,225,226,170,209,236,246,250,253,255,254,233,117,207,179,144,201,209,245,188,234,233,143,184,230,247,238,221,130,225,226,226,176,190,238,247,251,254,253,233,153,189,213,225,255,223,213,173,167,218,200,103,223,249,244,227,143,225,227,226,199,181,238,248,251,253,240,201,110,215,154,214,227,250,247,201,124,214,80,214,246,253,250,245,232,147,220,227,226,212,154,234,249,252,248,226,77,231,189,164,205,185,238,218,203,209,96,207,244,254,254,251,248,232,139,220,229,226,216,143,229,243,249,233,180,177,232,228,202,255,196,163,192,166,202,163,245,252,254,254,250,247,232,142,222,228,226,229,162,218,235,240,230,82,229,228,234,184,203,186,229,197,159,217,178,230,249,254,255,251,245,233,141,225,228,226,228,165,187,230,225,192,132,231,228,254,245,242,214,236,240,253,234,119,227,242,254,253,249,245,230,119,229,227,226,230,209,158,203,177,79,204,226,239,250,250,243,240,248,255,216,153,111,224,250,254,250,240,243,223,159,232,227,226,230,221,151,133,73,94,224,225,235,206,180,167,178,186,147,68,76,196,243,253,252,228,177,210,139,216,230,225,226,228,225,214,181,116,160,216,233,216,105,119,136,161,155,147,153,190,242,253,252,239,188,116,109,130,221,227,223,226,227,230,233,217,205,210,229,231,205,135,213,220,228,222,219,228,248,253,252,243,213,101,179,193,204,227,226,221,226,224,228,232,236,242,237,232,158,208,238,249,251,252,253,252,235,194,113,197,231,232,227,223,218,226,222,226,230,234,237,239,234,229,162,207,232,244,247,250,243,207,145,113,196,232,235,232,229,225,221,216,226,218,222,226,230,233,236,233,228,180,164,211,214,219,224,216,208,157,101,142,213,232,234,233,229,226,222,217,213,223,216,220,223,227,230,233,235,228,222,176,154,133,148,141,113,116,140,199,229,236,235,233,230,226,223,219,215,211,235,208,210,211,216,203,171)
var G : array 1 .. 727 of nat1 := init(206,210,212,222,202,206,210,213,217,220,219,208,145,78,88,122,138,139,138,138,103,130,199,219,221,218,215,212,208,204,200,196,229,207,211,215,218,221,220,202,110,106,165,208,225,220,218,215,191,112,87,191,222,225,223,220,217,213,209,205,200,226,210,214,218,220,218,192,100,149,212,233,240,237,240,238,235,214,129,83,197,225,229,227,224,220,216,212,208,203,226,214,218,220,220,196,89,164,229,239,241,240,234,231,226,232,201,119,103,213,231,234,231,228,225,221,217,212,207,226,216,213,209,191,81,152,230,240,242,237,205,173,156,159,144,125,82,150,231,236,229,213,200,207,216,220,215,210,226,218,139,104,72,106,217,242,244,236,177,93,65,64,80,95,112,149,228,242,237,212,165,91,99,152,202,218,214,226,206,67,154,134,188,238,244,241,181,63,82,159,202,200,210,224,245,251,246,225,191,73,58,70,76,159,221,216,226,173,97,220,221,234,245,247,217,96,102,237,255,255,254,255,255,253,240,209,146,50,133,148,77,113,214,219,226,134,121,233,238,244,247,247,192,83,154,227,216,179,211,226,198,255,252,228,199,81,105,195,193,106,94,215,220,226,103,141,234,242,246,249,250,225,150,114,181,121,211,220,205,190,191,243,218,169,51,165,231,217,141,76,208,222,226,95,142,230,243,247,250,254,254,197,68,158,168,124,186,204,244,187,233,214,80,110,216,244,233,168,65,204,223,226,98,123,230,243,247,251,253,224,103,103,199,215,255,217,206,171,150,208,140,67,192,245,239,191,77,196,223,226,127,110,229,245,248,251,237,137,63,183,121,200,222,249,244,180,90,168,55,173,246,250,247,242,207,77,178,224,226,160,93,214,246,249,247,176,52,188,170,156,200,176,235,212,193,166,60,161,243,254,252,248,245,209,76,165,226,226,170,77,191,238,246,217,106,102,216,227,202,255,183,146,183,156,114,115,235,252,254,251,247,244,210,76,176,225,226,208,79,153,224,236,174,51,169,223,234,183,199,178,226,180,140,155,116,183,246,253,251,247,241,208,68,194,224,226,216,86,112,202,213,122,71,199,226,254,245,241,213,234,239,253,202,74,142,238,253,250,246,242,197,57,221,224,226,222,124,82,161,158,63,124,210,238,250,250,241,237,246,255,213,119,64,189,250,251,246,236,239,175,84,227,223,226,227,165,68,93,72,55,174,221,235,204,158,129,121,130,107,63,66,164,242,252,249,224,163,195,116,159,227,222,226,225,209,144,86,71,124,207,229,190,80,108,112,101,103,102,132,185,242,251,249,235,145,71,88,83,214,224,220,226,224,227,228,198,190,206,227,220,118,106,196,209,214,209,212,227,248,251,249,239,174,69,165,176,200,224,223,218,226,221,225,229,233,239,234,208,85,135,226,247,249,249,250,249,232,170,87,180,228,229,224,220,215,226,219,223,227,231,234,236,231,195,87,134,209,239,244,247,240,203,134,101,187,230,232,229,226,222,218,213,226,215,219,223,227,230,233,230,204,104,99,154,180,194,203,200,191,139,92,133,208,230,231,230,226,223,219,214,210,223,213,217,220,224,227,230,232,219,171,107,77,80,83,84,82,93,129,195,226,233,232,230,227,223,220,216,212,208,235,208,210,211,216,203,171)
var B : array 1 .. 727 of nat1 := init(193,196,198,222,190,193,196,199,202,204,203,193,133,71,81,112,126,127,126,125,95,119,183,202,205,202,200,198,195,192,189,186,229,194,197,200,203,205,203,186,102,98,152,190,206,201,200,197,175,103,81,175,204,208,206,204,202,199,196,193,189,226,197,200,203,204,201,177,92,137,194,214,219,216,219,217,215,195,118,76,181,206,211,209,207,204,201,198,195,191,226,200,203,204,203,181,82,150,210,218,220,219,213,210,206,211,183,109,95,194,211,215,212,210,208,205,202,198,195,226,201,198,194,176,75,140,210,219,220,216,186,158,142,145,131,114,74,137,210,216,209,196,183,191,199,204,201,197,226,203,127,96,66,98,199,221,222,215,161,84,59,58,73,86,101,136,207,221,216,194,151,84,92,141,188,203,200,226,191,63,142,122,172,218,222,219,165,57,75,144,183,181,191,203,222,227,223,205,174,67,53,65,71,148,205,202,226,161,90,202,203,214,223,225,198,88,94,216,234,235,234,234,232,230,217,190,134,46,121,136,72,105,199,204,226,124,112,215,218,223,225,224,174,76,142,209,199,166,195,209,182,234,230,208,181,74,97,178,178,98,88,199,205,226,96,131,215,222,225,227,227,205,138,106,168,112,197,205,191,176,177,224,199,154,46,151,211,199,131,71,192,207,226,88,131,211,222,225,227,231,232,182,63,147,157,116,174,191,228,174,216,197,73,101,197,223,214,155,60,189,207,226,92,114,211,222,225,228,229,205,96,96,186,202,239,203,193,161,140,192,129,62,175,223,219,176,72,182,207,226,118,102,210,224,226,228,216,125,59,171,114,188,209,235,230,170,85,157,51,159,224,227,225,221,190,72,165,208,226,148,87,197,225,227,225,162,48,175,159,147,189,167,222,200,183,156,57,150,224,232,229,226,224,193,71,154,210,226,158,71,175,218,224,197,98,94,201,212,189,240,173,138,173,147,107,108,218,231,231,229,226,224,194,70,164,209,226,193,74,142,206,216,160,47,156,206,218,171,186,168,213,170,131,146,108,169,225,230,229,226,221,191,64,180,209,226,200,80,104,186,196,112,65,183,210,236,230,226,200,220,224,237,189,69,132,218,230,228,225,222,182,53,205,209,226,207,116,76,148,145,57,114,192,218,231,232,225,221,230,238,198,110,60,174,227,229,225,217,220,162,78,211,208,226,211,154,64,86,66,51,160,202,216,188,147,119,113,121,100,58,62,152,221,230,227,205,150,179,107,148,211,208,226,210,195,135,80,66,114,190,209,174,74,99,104,94,96,95,121,169,220,229,227,215,134,66,82,77,199,209,206,226,209,211,211,183,175,189,208,201,108,97,180,191,197,192,195,208,227,229,228,219,160,64,152,163,185,210,209,205,226,207,210,213,216,220,215,192,79,124,206,226,227,227,229,228,212,157,80,166,210,213,209,206,203,226,206,209,212,215,217,218,213,180,81,123,192,219,224,226,221,186,122,93,173,212,215,213,211,208,205,201,226,203,206,209,212,214,216,213,189,97,92,143,165,179,187,184,176,129,85,121,193,213,214,214,211,209,206,202,199,223,202,205,207,210,212,214,216,203,159,99,72,74,77,78,75,86,118,180,210,216,216,214,212,209,207,204,201,198,235,208,210,211,216,203,171)
%Compression Index
var N : array 1 .. 727 of nat1 := init(2,4,23,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,23,1,1,1)


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

end RefreshPic
