%--------Embedded Image File (EI) 46 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 2:00AM
%Compile Time: 26 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   My Computer.bmp_EI.tu
%File Num:       46 of 81
%Original Image: My Computer.bmp
%Detentions:     32 by 31
%Mega-Pixels:    0.00009



unit

module My_ComputerPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 32
    var height : int := 31
    var pixels : int := 992


%RGB Color Channels
var R : array 1 .. 819 of nat1 := init(255,202,132,96,85,86,78,76,80,90,140,194,255,165,122,127,170,201,208,208,202,202,187,163,124,85,98,167,255,136,158,210,227,219,209,203,198,197,173,124,134,165,178,141,88,118,255,143,183,229,227,220,215,215,210,204,202,121,189,103,114,115,158,156,85,126,255,209,148,239,227,232,229,228,223,216,213,182,153,205,119,129,115,139,166,149,57,255,192,186,238,235,241,239,235,229,220,221,158,185,155,118,122,121,147,159,152,81,255,209,176,244,242,252,252,237,232,221,223,143,188,126,114,115,113,145,163,153,92,255,197,113,92,73,149,255,172,228,250,240,251,252,232,224,209,145,175,107,108,106,103,142,167,127,155,205,125,120,168,173,163,102,95,177,255,184,227,164,148,190,224,240,188,151,152,95,104,101,99,140,141,119,152,140,175,183,174,160,151,167,145,100,114,173,255,199,133,94,165,149,149,153,138,113,95,98,94,93,129,156,170,186,189,181,178,175,150,154,152,152,155,132,99,150,255,208,144,52,47,110,153,139,89,81,90,86,78,90,167,201,197,188,190,178,157,148,101,88,135,158,146,148,134,120,255,191,140,26,13,21,26,82,153,154,88,70,58,81,184,207,205,185,144,130,147,167,152,118,77,91,142,152,135,131,255,178,112,16,25,24,26,16,8,43,140,142,88,95,195,177,135,132,163,184,179,175,151,137,153,111,77,98,121,130,255,177,103,19,35,36,43,44,46,38,20,41,98,109,89,111,174,199,189,177,173,173,148,87,107,131,139,113,77,117,255,217,167,81,31,47,46,53,52,56,54,56,48,36,40,74,86,87,112,187,178,173,174,142,99,149,112,111,127,117,124,255,210,155,82,51,54,60,60,64,66,68,64,60,57,49,43,49,59,171,182,173,174,137,98,153,148,144,121,99,127,255,207,144,75,61,61,71,72,74,76,78,82,70,72,68,66,60,43,66,184,180,173,174,133,100,114,146,156,139,97,125,255,198,134,64,70,81,83,85,89,88,93,86,90,83,83,74,71,59,72,198,179,173,174,126,106,126,91,112,132,100,125,255,183,134,76,77,85,96,95,93,100,96,100,92,94,89,82,77,76,76,205,175,174,172,123,106,119,148,135,104,97,123,255,170,125,85,93,94,105,110,113,115,118,113,114,106,105,99,90,80,94,203,176,175,172,116,105,147,94,102,139,93,122,255,221,161,117,90,97,110,115,116,123,123,123,120,113,114,108,98,85,106,199,175,169,111,100,143,153,153,135,91,120,255,205,164,104,102,110,118,131,132,136,142,142,139,140,127,124,116,108,91,127,197,176,167,113,91,94,115,132,132,92,121,255,192,172,102,108,119,127,138,141,148,151,150,153,147,140,135,124,117,88,149,190,177,177,158,102,98,97,90,93,100,85,121,255,172,166,104,115,129,139,148,152,157,163,164,156,152,140,136,129,89,165,183,165,166,173,109,67,79,94,97,95,83,119,228,176,158,108,123,141,145,159,169,173,179,180,178,171,158,152,141,137,85,178,207,225,238,248,248,224,163,85,65,83,82,120,205,195,139,126,123,138,158,164,183,187,195,198,190,175,170,157,148,138,90,228,227,220,218,217,219,223,233,249,213,152,85,106,160,215,141,138,136,125,116,129,141,173,183,192,202,193,183,168,158,134,103,199,198,193,192,191,187,188,182,171,165,165,158,208,184,192,219,196,178,163,153,147,135,121,115,122,136,151,162,159,153,130,114,172,160,166,166,168,169,173,180,213,255,226,204,202,210,208,204,190,172,160,154,149,143,129,120,114,116,112,103,185,192,203,222,255,220,219,218,209,194,176,150,142,143,149,122,88,255,213,188,147,192,255)
var G : array 1 .. 819 of nat1 := init(255,198,133,96,85,85,77,75,80,90,139,192,255,165,121,129,169,201,208,208,202,203,187,163,123,86,98,167,255,136,158,210,227,219,209,203,198,197,173,123,133,165,178,140,87,116,255,142,183,229,227,220,215,215,210,204,202,121,188,102,113,115,158,155,85,122,255,209,148,239,227,232,229,228,223,216,213,182,154,205,118,129,116,139,165,147,55,255,192,186,238,235,241,239,235,229,220,221,158,185,155,117,121,120,147,161,157,81,255,209,176,244,242,252,252,237,232,221,223,142,190,126,113,114,112,145,164,152,91,255,197,113,92,73,145,255,172,228,250,240,252,252,232,224,209,145,174,106,108,105,103,142,168,127,157,206,122,120,168,173,163,101,92,176,255,184,229,167,145,187,226,240,188,152,153,94,104,99,100,143,140,117,156,139,176,183,174,160,151,168,145,98,113,172,255,198,131,101,164,127,143,153,140,113,93,97,93,93,130,157,170,187,189,181,178,175,150,155,152,152,157,126,94,147,255,210,126,147,178,178,166,115,78,80,89,86,76,90,167,203,197,189,190,178,155,147,101,88,134,159,145,189,178,113,255,191,110,157,162,166,168,184,177,124,72,69,58,81,184,209,205,184,144,130,147,166,154,118,77,90,142,160,146,127,255,175,108,166,161,162,163,161,165,185,188,130,76,88,192,180,134,136,163,184,179,175,150,138,154,111,77,96,118,130,255,171,109,165,167,167,171,172,173,170,172,179,185,137,87,103,167,198,189,177,173,173,148,87,108,132,139,112,77,116,255,218,155,129,171,174,173,177,176,178,179,178,175,175,183,177,142,109,112,185,178,173,175,142,99,148,112,111,127,117,124,255,211,140,148,181,177,182,180,183,184,185,184,180,180,180,183,189,72,165,183,173,174,136,98,151,147,144,120,99,125,255,207,127,163,186,181,187,187,189,189,191,193,186,188,185,184,181,195,73,180,180,173,174,133,101,113,146,155,137,97,124,255,196,129,175,190,192,194,195,197,198,200,196,197,193,194,189,187,194,63,197,179,173,174,126,105,125,90,112,130,100,125,255,180,139,182,193,195,202,200,199,203,201,205,198,200,197,194,195,187,70,205,175,174,173,123,105,120,146,134,104,96,122,255,162,153,193,201,201,208,210,211,212,214,211,212,208,207,204,204,171,84,203,176,175,172,115,104,147,94,102,138,95,123,255,222,151,160,199,203,209,213,213,216,215,216,215,211,211,208,214,149,102,199,175,169,110,100,142,152,151,134,90,119,255,205,154,168,209,210,214,219,219,222,223,224,222,224,218,216,212,222,134,130,196,176,168,114,90,93,114,132,132,90,120,255,192,167,175,214,214,218,223,225,228,229,230,230,228,224,221,216,228,118,144,191,177,175,162,105,99,100,93,91,99,86,121,255,169,169,185,217,217,223,229,230,234,237,237,233,231,224,223,229,106,161,182,165,165,176,117,67,79,94,96,94,85,120,228,171,176,209,229,228,227,234,240,241,244,246,242,240,235,231,227,223,90,178,206,224,238,248,248,225,161,84,66,80,81,119,205,193,139,147,184,220,244,250,254,255,251,249,252,243,240,233,232,215,94,228,231,224,223,222,223,227,238,252,219,157,83,105,160,216,140,130,120,109,112,135,168,204,232,242,247,253,252,244,244,202,104,205,197,198,194,192,192,192,185,174,166,166,159,208,182,192,218,196,178,164,150,144,129,113,112,119,145,178,204,212,232,180,112,169,159,168,167,169,167,172,179,211,255,223,203,202,210,208,203,191,173,160,154,148,141,119,110,110,131,129,101,185,192,204,221,255,220,219,217,210,195,177,153,142,143,144,117,87,255,213,188,147,192,255)
var B : array 1 .. 819 of nat1 := init(255,181,161,137,126,129,121,115,110,121,150,190,255,181,148,166,194,217,220,225,226,225,219,205,173,132,125,176,255,168,180,218,227,223,219,217,216,216,205,177,171,193,220,191,139,130,255,178,199,226,227,222,217,219,218,218,216,167,209,124,140,169,201,206,144,119,255,221,181,234,227,230,229,228,222,218,220,204,194,205,136,155,147,179,206,196,105,255,213,201,233,236,245,242,235,229,221,223,184,213,186,161,160,161,188,204,214,134,255,228,200,240,243,250,251,239,232,222,223,187,221,169,165,170,166,189,203,205,131,255,208,156,144,103,141,255,199,232,248,244,249,247,230,222,213,190,209,169,178,174,177,192,206,180,180,214,152,170,214,192,170,147,97,187,255,206,233,209,201,217,222,227,207,197,199,178,185,182,185,198,187,160,177,184,215,217,214,185,162,169,167,124,136,179,255,215,188,183,205,186,195,193,192,192,189,189,189,188,193,194,199,218,218,211,211,213,181,167,170,167,174,162,132,163,255,230,179,234,253,235,211,185,178,185,187,185,181,184,210,221,218,216,216,211,202,201,163,141,163,179,174,142,134,158,255,220,159,251,255,255,254,250,223,186,176,178,173,183,214,221,220,211,197,190,198,210,184,157,136,138,176,174,161,152,255,201,169,253,255,255,255,255,255,255,232,192,175,168,209,214,192,198,202,213,212,212,189,171,176,160,131,144,168,160,255,199,182,253,255,255,255,255,255,255,255,255,242,209,180,181,205,218,216,210,209,211,186,144,163,166,176,158,142,145,255,227,187,203,254,255,255,255,255,255,255,255,255,255,255,246,215,196,192,213,211,210,210,185,149,206,172,162,176,163,148,255,222,178,213,255,255,255,255,255,255,255,255,255,255,255,255,254,184,202,213,209,211,187,156,205,203,200,177,157,155,255,216,164,231,255,255,255,255,255,255,255,255,255,255,255,255,255,255,185,207,212,209,211,185,157,173,200,209,193,162,147,255,202,168,239,255,255,255,255,255,255,255,255,255,255,255,255,255,255,174,215,211,210,210,180,165,174,155,167,186,161,151,255,192,177,239,255,255,255,255,255,255,255,255,255,255,255,255,255,255,180,218,210,210,211,178,166,170,195,191,165,165,149,255,183,194,245,255,255,255,255,255,255,255,255,255,255,255,255,255,242,179,218,210,210,210,181,169,198,161,155,189,159,150,255,228,174,206,251,255,255,255,255,255,255,255,255,255,255,255,255,224,186,218,210,209,181,158,192,206,207,187,161,147,255,211,175,216,255,255,255,255,255,255,255,255,255,255,255,255,255,255,209,200,216,210,207,188,162,153,172,178,182,167,160,255,205,190,218,255,255,255,255,255,255,255,255,255,255,255,255,255,255,189,197,216,211,210,207,192,194,189,173,163,163,169,165,255,182,188,221,255,255,255,255,255,255,255,255,255,255,255,255,255,180,200,212,205,203,214,199,179,186,192,192,187,182,158,232,179,199,244,255,255,255,255,255,255,255,255,255,255,255,255,255,255,169,212,224,234,244,247,248,239,204,181,179,187,181,152,208,201,147,167,220,254,255,255,255,255,255,254,255,255,255,255,255,243,170,233,249,242,242,241,241,242,250,249,232,213,180,153,169,222,150,140,130,124,134,164,198,219,238,245,250,255,255,255,255,236,175,228,216,223,218,216,216,216,211,209,193,194,184,214,189,194,216,204,192,177,171,162,161,145,148,158,179,209,223,232,248,218,174,203,199,201,203,201,197,200,203,221,255,217,207,210,218,214,210,201,192,183,183,181,174,158,159,162,179,183,150,212,215,218,233,255,224,226,225,224,214,193,181,182,182,184,171,125,255,225,207,185,207,255)
%Compression Index
var N : array 1 .. 819 of nat1 := init(5,1,1,1,1,1,1,1,1,1,1,1,19,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,16,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,16,1,1,1,1,1,1,1,1,1,1,1,1,28,1,1,1,1,13)


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

end My_ComputerPic
