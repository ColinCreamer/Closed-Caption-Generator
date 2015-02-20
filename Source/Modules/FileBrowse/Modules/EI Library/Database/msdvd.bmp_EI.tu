%--------Embedded Image File (EI) 43 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 33 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   msdvd.bmp_EI.tu
%File Num:       43 of 81
%Original Image: msdvd.bmp
%Detentions:     32 by 41
%Mega-Pixels:    0.0001



unit

module MsdvdPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 32
    var height : int := 41
    var pixels : int := 1312


%RGB Color Channels
var R : array 1 .. 838 of nat1 := init(208,165,156,158,156,157,170,203,243,239,239,238,253,141,218,253,253,253,253,144,211,253,249,248,248,247,247,246,246,244,253,143,211,253,249,248,248,247,247,246,246,245,253,143,211,253,249,248,248,247,247,247,246,246,245,253,143,211,253,249,248,248,239,187,154,140,134,133,138,151,188,240,247,246,245,253,143,211,253,249,249,248,246,178,142,150,160,168,177,184,182,162,163,136,175,247,246,253,143,211,253,249,249,218,159,150,154,153,159,167,176,184,174,78,196,231,165,158,222,247,246,253,143,211,253,249,249,220,148,140,139,155,151,156,42,110,170,175,62,57,244,247,185,134,220,247,246,253,143,211,253,250,249,245,159,133,117,125,149,156,153,148,84,81,101,77,33,169,229,219,186,161,247,246,253,143,211,253,250,249,184,148,121,114,116,134,158,160,160,175,189,160,99,62,39,161,213,234,171,178,247,246,253,143,211,253,250,239,158,144,132,121,115,114,144,163,160,174,195,228,217,75,30,131,149,249,240,138,242,247,246,253,143,211,253,250,199,167,210,200,171,136,108,120,155,181,180,186,214,239,110,63,83,242,250,253,179,189,247,246,253,143,211,253,250,250,168,145,159,185,200,199,173,146,175,194,192,189,190,202,192,83,25,203,250,251,215,155,247,246,253,143,211,253,250,250,163,108,111,123,140,163,177,181,194,195,194,192,186,230,96,61,100,220,205,196,142,248,247,247,253,143,211,253,250,247,166,122,119,116,119,138,161,191,196,194,249,194,185,184,150,87,26,139,123,120,142,244,248,248,253,143,211,253,251,250,248,169,172,179,182,187,200,203,212,201,195,249,249,194,189,159,142,82,52,77,114,111,144,244,248,248,253,143,211,253,251,250,171,207,228,231,229,231,224,208,202,195,191,187,192,182,161,169,123,83,29,131,120,147,248,248,253,143,211,253,251,182,202,248,248,117,134,207,170,174,191,191,191,188,163,132,145,149,63,37,67,169,159,248,248,253,143,211,253,251,251,204,181,248,205,126,39,24,33,92,169,179,188,188,178,139,113,122,132,150,92,151,194,248,248,253,143,211,253,251,239,176,204,213,172,148,97,85,38,157,81,191,234,200,167,148,134,99,74,49,90,242,248,248,253,143,211,253,251,191,161,158,142,146,156,165,174,179,50,40,54,78,100,162,151,139,75,65,39,238,249,247,253,143,211,253,251,246,178,155,145,153,161,169,179,186,203,199,145,124,68,144,159,151,112,71,37,153,249,248,253,143,211,253,252,251,227,179,162,157,165,172,175,187,204,227,241,223,197,159,168,169,154,64,56,56,246,249,249,253,143,211,253,252,252,251,226,185,175,171,174,177,181,197,215,222,224,202,188,178,179,223,125,70,30,170,249,249,253,143,211,253,252,252,251,249,199,179,180,184,191,203,221,235,224,192,173,200,247,250,215,54,50,72,249,249,253,142,211,253,252,252,251,250,251,250,241,209,188,178,177,176,176,188,210,243,250,250,101,81,161,249,249,253,141,211,253,252,252,251,250,251,251,250,250,249,253,140,211,253,252,252,251,250,251,251,250,250,247,253,143,211,253,252,252,251,250,251,251,250,249,249,250,248,243,253,146,211,253,252,252,251,250,250,249,253,242,253,142,211,253,252,252,251,251,253,236,216,215,216,213,214,223,230,149,211,253,253,252,252,251,253,184,190,191,190,143,255,211,253,253,252,252,251,253,178,241,248,249,239,236,161,255,211,253,253,253,252,252,251,253,181,241,253,235,234,168,255,211,253,253,253,252,252,251,250,253,180,241,236,228,168,255,211,253,253,253,252,252,250,246,253,181,236,231,159,255,211,253,253,253,252,251,246,243,246,187,231,168,255,211,253,249,218,165,255,211,241,237,236,159,255)
var G : array 1 .. 838 of nat1 := init(208,165,156,158,156,157,170,203,242,237,238,237,253,141,218,253,253,253,253,144,210,253,248,247,247,246,246,245,245,243,253,143,210,253,248,247,247,246,246,245,245,244,253,143,210,253,248,247,247,247,246,246,245,245,244,253,143,210,253,248,247,247,240,193,159,142,134,133,139,155,191,240,246,245,244,253,143,210,253,248,248,247,246,184,142,162,183,202,214,221,219,184,175,137,178,246,245,253,143,210,253,248,248,221,168,162,185,188,196,205,213,223,215,135,223,240,169,162,221,246,245,253,143,211,253,248,248,223,148,160,176,192,189,193,119,168,212,214,135,115,250,252,195,135,220,246,245,253,143,211,253,249,248,246,170,156,158,165,188,193,191,191,149,149,164,142,104,194,242,229,180,160,246,245,253,143,211,253,249,248,191,162,164,158,157,171,193,195,197,214,227,205,153,135,103,192,197,194,162,179,246,245,253,143,211,253,249,240,159,179,174,166,157,156,181,197,197,212,231,247,231,143,97,159,162,208,210,138,241,246,245,253,143,211,253,249,204,177,194,190,182,168,154,162,189,208,207,214,232,244,155,133,124,223,226,222,167,191,246,245,253,143,211,253,249,249,175,171,189,195,201,197,187,174,201,216,216,212,211,212,199,150,92,208,221,211,188,156,246,245,253,143,211,253,249,249,166,153,158,166,177,190,196,197,215,214,202,213,204,222,148,129,137,202,188,186,143,247,246,245,253,143,211,253,249,246,167,163,162,158,158,167,182,208,218,202,248,202,211,207,181,152,92,175,164,161,143,243,247,246,253,143,211,253,250,249,247,169,175,174,173,177,188,200,208,219,202,248,248,202,216,190,175,142,119,131,162,157,145,243,247,246,253,143,211,253,250,249,174,189,191,195,202,207,216,206,216,213,202,202,213,207,186,184,161,150,92,169,160,148,247,246,253,143,211,253,250,189,201,207,215,151,161,206,183,197,214,217,215,211,193,171,179,182,119,97,115,173,162,247,246,253,143,211,253,250,250,212,201,218,200,157,109,103,111,150,199,205,210,215,208,179,159,166,184,200,149,168,197,247,246,253,143,211,253,250,242,178,202,189,170,172,151,146,116,202,147,218,250,230,203,184,174,152,150,110,123,241,247,246,253,143,211,253,250,200,173,168,174,182,190,200,211,219,127,117,126,147,160,197,187,178,143,131,98,240,248,246,253,143,211,253,250,247,187,177,181,188,196,206,215,226,237,226,186,176,140,188,194,185,156,147,100,178,248,247,253,143,211,253,251,250,229,179,185,193,203,210,213,226,237,245,248,243,233,202,204,191,160,135,121,108,246,248,248,253,143,211,253,251,251,250,228,192,187,205,213,215,218,231,237,235,237,232,224,190,183,223,167,142,92,189,248,248,253,143,211,253,251,251,250,249,206,180,195,212,229,235,241,243,228,202,174,203,246,249,226,130,113,116,248,248,253,142,211,253,251,251,250,249,250,250,243,214,193,179,177,176,177,190,212,243,249,249,150,139,183,248,248,253,141,211,253,251,251,250,249,250,250,249,249,248,253,140,211,253,251,251,250,249,250,250,249,249,247,253,142,211,253,251,251,250,249,250,250,249,248,248,248,248,244,253,146,211,253,251,251,250,249,249,248,253,243,253,142,211,253,251,251,250,250,253,236,215,215,215,215,214,223,229,149,211,253,252,251,251,250,253,183,189,191,189,143,255,211,253,252,251,251,250,253,178,241,248,249,239,235,161,255,211,253,252,252,251,251,250,253,181,241,253,235,234,167,255,211,253,252,252,251,251,250,250,253,180,241,236,227,168,255,211,253,252,252,251,251,249,246,253,181,236,229,159,255,211,253,252,252,251,250,246,243,247,187,229,168,255,211,253,249,217,165,255,211,241,237,236,158,255)
var B : array 1 .. 838 of nat1 := init(208,165,156,158,156,157,170,203,242,237,238,237,253,141,218,253,252,251,253,144,210,253,246,247,246,246,245,245,244,243,253,143,210,253,247,247,246,246,245,245,244,243,253,143,210,253,247,247,246,246,246,245,245,244,243,253,143,211,253,247,247,246,240,197,164,143,134,133,140,158,194,239,245,245,243,253,143,211,253,248,247,247,246,189,143,170,196,219,232,240,235,200,179,137,181,245,244,253,143,210,253,248,247,224,174,168,201,208,216,224,232,241,239,186,238,242,172,166,220,245,244,253,143,210,253,248,247,225,149,174,196,211,208,213,190,213,238,238,199,174,253,253,201,135,219,245,244,253,143,210,253,248,248,246,177,173,185,188,209,212,211,217,205,208,217,201,173,219,249,234,163,154,245,244,253,143,210,253,248,248,199,174,196,188,184,196,214,214,217,232,246,237,204,200,165,220,166,124,131,176,245,244,253,143,210,253,248,242,160,212,215,204,188,183,204,217,216,231,248,253,242,204,164,176,155,161,156,137,240,245,244,253,143,211,253,248,207,178,158,168,186,199,191,189,213,227,228,234,243,244,194,196,159,191,205,186,141,190,245,244,253,143,211,253,249,248,181,189,202,188,178,177,185,193,224,237,238,234,233,215,172,208,159,196,188,155,110,152,246,244,253,143,211,253,249,248,168,196,203,201,200,199,192,206,233,230,209,237,218,162,190,192,158,134,107,105,142,246,246,244,253,143,211,253,249,246,168,201,202,201,197,186,182,209,238,210,247,209,235,182,171,209,157,171,171,182,144,242,246,245,253,143,211,253,249,249,247,170,167,160,155,146,126,132,158,231,209,248,247,209,240,207,185,197,183,183,210,206,146,242,246,245,253,143,211,253,249,249,176,131,104,116,124,124,141,157,222,228,212,215,233,230,205,188,193,207,156,199,199,149,246,245,253,143,211,253,249,191,149,124,174,180,173,163,178,219,234,238,237,233,220,196,192,197,175,157,160,167,166,246,245,253,143,211,253,250,249,212,168,137,172,168,174,180,185,202,224,228,230,233,229,208,200,203,225,235,197,180,201,247,245,253,143,211,253,250,244,177,144,121,155,191,200,200,190,230,207,239,253,246,223,209,204,200,210,174,155,240,247,246,253,143,211,253,250,208,187,164,201,211,214,221,231,242,197,192,196,208,212,219,210,206,196,194,155,242,247,246,253,143,211,253,250,249,195,196,211,214,219,225,235,246,253,244,224,223,205,222,216,211,192,208,163,203,247,246,253,143,211,253,250,250,232,180,202,217,222,229,234,246,253,253,253,251,250,230,223,206,168,194,184,159,246,247,246,253,143,211,253,251,250,250,230,197,196,223,231,235,239,248,249,244,246,247,241,199,186,223,204,204,155,210,247,246,253,143,211,253,251,250,250,249,210,181,203,225,247,249,249,248,231,207,175,205,245,248,236,192,176,163,248,246,253,142,211,253,251,250,250,250,250,250,244,218,196,179,177,176,177,192,214,243,249,248,193,188,207,248,247,253,141,211,253,251,250,250,250,250,249,249,248,248,253,140,211,253,251,250,250,250,250,249,249,248,247,253,142,211,253,251,250,250,250,250,249,249,248,247,247,247,244,253,146,211,253,251,250,250,250,249,248,253,243,253,142,211,253,251,250,250,249,253,237,214,215,215,215,214,223,229,149,211,253,251,251,250,250,253,184,189,191,189,143,255,211,253,252,251,250,250,253,178,241,248,249,239,235,161,255,211,253,252,251,251,250,250,253,181,241,253,235,234,167,255,211,253,252,251,251,250,250,250,253,180,241,236,227,168,255,211,253,252,251,251,250,250,246,253,181,236,229,159,255,211,253,252,251,251,250,246,243,246,187,229,168,255,211,253,249,217,165,255,211,241,237,236,156,255)
%Compression Index
var N : array 1 .. 838 of nat1 := init(1,1,1,26,1,1,1,1,1,1,26,1,1,1,1,23,5,1,1,1,1,1,1,2,8,1,10,1,4,1,1,1,1,1,2,2,7,2,11,1,2,1,1,1,1,1,2,4,6,1,2,10,1,1,1,1,1,1,1,4,3,2,1,1,1,1,1,1,1,1,1,1,7,1,1,1,1,1,1,2,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,1,1,1,1,1,2,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,4,2,1,2,4,3,5,4,3,1,1,1,1,5,2,2,1,4,3,5,5,1,1,1,1,1,6,3,2,3,1,4,2,2,2,1,1,1,1,1,1,1,8,2,3,3,4,1,6,1,1,1,1,1,9,2,7,2,1,1,1,1,1,1,1,1,1,1,1,1,1,10,2,7,1,1,4,1,1,1,1,1,1,2,10,2,6,1,1,1,1,1,1,1,1,2,1,1,2,1,10,2,5,1,1,1,1,1,1,1,3,1,1,3,1,10,3,2,1,1,1,1,1,1,1,4,1,1,5,1,10,2,1,1,1,1,1,1,1,5,1,1,6,1,10,1,1,1,1,1,1,1,6,1,19,3,1,1,7,1,1,18,3,1,8)


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

end MsdvdPic