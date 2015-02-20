%--------Embedded Image File (EI) 49 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 2:00AM
%Compile Time: 52 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   myDocs.bmp_EI.tu
%File Num:       49 of 81
%Original Image: myDocs.bmp
%Detentions:     48 by 48
%Mega-Pixels:    0.0002



unit

module MyDocsPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 48
    var height : int := 48
    var pixels : int := 2304


%RGB Color Channels
var R : array 1 .. 920 of nat1 := init(255,205,172,156,135,111,255,217,242,222,210,204,185,156,141,117,111,255,235,204,255,253,255,252,237,226,212,204,185,164,147,123,111,123,255,227,210,241,254,255,247,229,217,207,192,172,156,129,111,130,255,227,229,223,255,255,255,244,233,219,211,198,185,156,135,111,255,227,249,212,255,254,255,249,237,229,212,204,185,164,141,117,111,130,255,227,255,219,242,255,255,255,236,233,217,204,192,172,147,129,111,255,235,210,255,226,226,255,255,255,244,237,222,207,172,130,255,235,204,255,233,210,255,253,255,249,198,117,255,235,204,255,239,211,245,255,255,255,220,156,129,255,235,219,255,239,219,231,255,255,255,255,255,242,192,111,255,235,217,255,233,229,214,255,254,255,255,255,255,255,214,147,129,255,235,217,255,239,211,253,255,255,255,249,255,255,255,255,236,185,111,255,235,217,255,244,226,234,255,255,255,255,184,166,255,255,255,255,253,212,135,129,255,235,220,255,244,239,217,255,255,255,255,255,198,153,198,255,255,255,255,255,236,172,111,255,235,230,255,247,210,252,255,255,255,255,198,154,159,153,217,255,255,255,255,255,253,205,123,255,235,230,255,253,226,236,255,255,255,255,217,154,164,166,159,159,235,255,255,255,255,222,172,129,255,235,230,255,255,244,222,255,255,255,255,255,217,153,166,171,159,167,249,255,255,255,254,198,117,255,235,230,253,255,210,245,255,255,255,255,255,255,255,255,230,153,166,175,158,184,255,255,255,217,156,129,255,235,231,255,255,237,212,226,242,252,253,255,255,253,179,171,179,175,179,175,155,206,255,255,253,192,111,255,235,240,255,255,249,233,222,217,207,217,231,236,245,255,215,184,164,155,179,184,175,153,224,255,214,147,129,255,235,240,253,255,249,236,229,210,188,214,245,255,204,184,155,159,186,188,171,159,242,255,234,185,111,255,227,242,253,255,255,246,143,141,166,200,245,255,198,184,153,164,194,164,172,249,255,210,135,129,255,227,241,253,255,255,255,173,141,154,183,184,204,245,253,234,230,215,194,162,190,255,231,172,111,255,227,255,255,255,255,255,173,137,156,186,180,183,157,198,217,222,231,236,242,252,253,245,229,204,245,253,252,207,123,255,227,255,255,255,255,255,173,137,153,181,195,153,170,177,153,181,183,173,198,198,191,207,217,223,231,241,245,253,226,172,255,204,253,255,255,255,255,205,133,151,183,191,174,180,153,183,170,153,189,162,156,189,156,165,204,198,205,198,200,196,210,217,226,234,222,208,255,204,254,255,255,255,255,224,133,151,174,205,183,153,184,174,153,191,162,156,195,156,165,189,153,174,205,198,162,141,138,135,198,208,255,204,255,255,255,255,235,133,150,174,209,162,188,170,153,195,165,156,198,157,162,195,153,177,181,153,191,209,189,156,141,118,111,255,204,240,255,255,255,255,235,133,147,165,213,174,157,198,165,157,201,157,165,198,153,174,188,153,191,184,209,213,180,153,133,143,255,210,254,255,255,247,157,147,165,213,217,213,165,162,205,157,165,201,153,177,189,153,191,177,157,205,217,141,143,255,210,231,255,255,255,247,157,147,157,217,221,209,157,170,204,153,177,191,153,195,180,153,204,167,162,217,221,187,143,255,207,252,255,255,198,141,170,212,225,204,153,180,195,153,198,180,153,207,167,157,212,157,170,225,196,133,255,210,217,223,231,224,152,211,230,191,153,201,183,153,212,167,157,214,157,167,212,167,225,230,211,137,255,156,228,234,183,153,214,167,157,219,158,167,214,153,188,234,228,137,143,255,180,156,238,233,170,158,222,158,170,217,153,184,207,222,238,232,156,156,255,180,178,242,230,158,170,219,153,186,209,153,230,242,178,156,255,180,204,246,222,153,188,212,153,205,222,246,187,156,255,180,222,249,207,153,213,189,195,249,211,156,255,156,239,253,191,153,228,253,226,137,255,168,248,253,248,222,255,249,191,249,255,235,156,255,188,253,179,93,235,253,248,166,179,255,185,202,253,190,41,123,248,253,168,179,255,185,222,216,93,168,253,190,179,255,185,134,123,134,165,180,255,204,180,255)
var G : array 1 .. 920 of nat1 := init(255,157,139,132,121,111,255,180,230,186,160,153,144,132,124,114,111,255,118,153,255,231,210,207,195,176,164,153,144,135,126,116,111,116,255,134,160,223,245,213,198,181,170,158,148,139,132,119,111,113,255,134,181,191,255,217,217,208,188,170,160,150,144,132,121,111,255,134,203,164,255,240,220,212,195,181,164,153,144,135,124,114,111,113,255,134,212,170,230,243,223,217,203,188,170,153,148,139,126,119,111,255,118,150,217,176,198,255,229,227,208,195,178,158,139,113,255,118,153,217,188,166,255,253,230,214,150,114,255,118,153,217,189,160,236,243,234,204,181,132,119,255,118,170,219,189,170,204,254,237,234,237,204,230,148,111,255,118,170,219,188,181,172,255,240,240,214,240,204,253,172,126,119,255,118,170,222,189,160,243,254,243,223,210,224,243,204,255,217,144,111,255,118,170,222,193,176,212,254,247,227,214,208,203,214,237,247,204,251,164,121,119,255,118,181,222,193,189,180,255,253,250,240,220,212,204,212,223,247,250,204,254,203,139,111,255,118,191,219,198,160,249,254,255,243,225,212,205,210,204,217,230,253,255,204,254,251,157,116,255,118,191,222,202,176,217,255,255,250,230,222,205,215,217,210,205,229,240,255,204,255,186,139,119,255,118,191,222,204,193,186,255,255,255,254,237,222,204,217,222,210,209,234,248,204,254,240,150,114,255,118,191,231,209,160,236,255,255,254,255,254,255,253,243,232,204,217,226,207,208,243,204,254,180,132,119,255,118,204,226,214,195,164,198,230,249,253,255,254,251,216,222,230,226,230,226,206,226,204,254,231,148,111,255,118,214,226,220,212,188,178,170,159,180,204,217,236,255,246,235,215,206,230,235,226,204,208,255,172,126,119,255,118,214,231,225,217,203,181,166,149,172,236,255,236,235,206,210,237,239,222,205,249,255,212,144,111,255,134,216,231,230,214,205,142,178,203,170,236,255,230,235,204,215,244,215,214,252,254,165,121,119,255,134,223,231,237,223,214,175,178,205,219,208,163,236,253,245,243,246,244,213,222,255,204,139,111,255,134,243,242,243,233,220,175,167,205,220,217,219,183,159,180,186,204,217,230,249,253,253,245,229,253,253,248,159,116,255,134,243,246,248,240,227,175,167,204,218,225,204,213,216,204,213,200,175,188,173,166,159,180,191,204,223,236,253,198,139,255,153,243,253,255,250,233,197,158,200,219,223,214,217,204,219,213,204,222,208,205,222,205,210,224,212,197,188,170,163,166,180,198,212,186,134,255,153,245,255,255,253,237,208,158,200,214,230,219,204,220,214,204,223,208,205,225,205,210,222,204,214,230,227,208,178,143,121,173,134,255,153,248,254,255,245,229,158,197,214,233,208,221,213,204,225,209,205,227,206,208,225,204,216,218,204,223,233,222,205,178,130,111,255,153,214,248,254,255,250,229,158,191,210,235,214,206,227,210,206,229,206,210,227,204,214,221,204,223,220,233,235,217,204,158,142,255,165,245,255,255,249,183,191,210,235,237,235,210,208,230,206,210,229,204,216,222,204,223,216,206,230,237,178,142,255,165,204,254,254,255,249,183,191,206,237,239,233,206,213,229,204,216,223,204,225,217,204,229,211,208,237,239,211,142,255,159,248,254,255,212,178,213,233,241,229,204,217,225,204,227,217,204,231,211,206,233,206,213,241,217,158,255,166,180,191,204,208,177,228,243,223,204,229,219,204,233,211,206,235,206,211,233,211,241,243,228,167,255,184,240,245,219,204,235,211,206,237,207,211,235,204,221,245,240,167,142,255,159,184,247,244,213,207,239,207,213,237,204,220,231,239,247,242,184,153,255,159,204,249,243,207,213,237,204,220,233,204,243,249,204,153,255,159,224,251,239,204,221,233,204,230,239,251,211,153,255,159,235,252,231,204,235,222,225,252,228,153,255,184,246,254,223,204,241,253,237,167,255,205,251,253,251,235,255,252,223,252,255,244,184,255,216,253,214,183,244,253,251,203,142,255,175,226,253,222,167,194,251,253,205,142,255,175,239,235,183,211,253,221,142,255,175,197,194,197,209,159,255,229,159,255)
var B : array 1 .. 920 of nat1 := init(255,11,38,57,83,111,255,63,191,77,12,0,22,57,76,104,111,255,155,0,255,165,107,100,73,45,21,0,22,48,69,97,111,97,255,111,12,173,227,110,87,53,29,7,13,38,57,90,111,130,255,111,53,95,255,135,114,94,64,34,14,6,22,57,83,111,255,111,105,21,255,177,117,103,73,53,21,0,22,48,76,104,111,130,255,111,125,34,191,213,120,114,86,64,29,0,13,38,69,90,111,255,155,30,135,45,111,255,133,124,94,73,41,7,38,130,255,155,0,135,64,32,255,253,127,105,6,104,255,155,0,135,72,14,207,213,132,101,49,57,90,255,155,34,148,72,34,126,249,135,132,135,101,118,13,111,255,155,38,148,64,53,47,255,177,138,111,138,101,168,30,69,90,255,155,38,157,72,14,221,210,141,120,116,121,141,101,172,107,22,111,255,155,38,157,79,45,143,249,145,124,111,212,235,111,135,145,101,180,21,83,90,255,155,49,157,79,72,63,255,168,148,138,117,201,255,201,120,145,148,101,189,86,38,111,255,155,87,148,87,12,239,210,153,141,123,201,255,255,255,172,127,151,153,101,189,180,11,97,255,155,87,157,97,45,159,242,153,148,127,178,255,255,255,255,246,152,138,153,101,198,77,38,90,255,155,87,157,101,79,77,255,198,163,158,135,178,255,255,255,255,240,142,153,101,204,177,6,104,255,155,87,165,106,12,207,255,234,216,198,189,172,168,141,168,255,255,255,255,212,141,101,210,63,57,90,255,155,126,155,111,73,21,111,191,239,253,234,204,180,248,255,255,255,255,255,255,199,101,216,165,13,111,255,155,147,155,117,103,64,41,29,15,63,126,159,207,255,255,255,255,255,255,255,255,255,147,223,41,69,90,255,155,147,165,123,108,86,53,32,33,47,207,255,255,255,255,255,255,255,255,246,232,228,143,22,111,255,111,152,165,127,111,112,185,228,235,63,207,255,255,255,255,255,255,255,251,237,237,29,83,90,255,111,173,165,135,120,111,161,228,255,255,212,31,207,253,255,255,255,255,255,251,242,126,38,111,255,111,213,158,141,131,117,161,213,255,255,255,255,202,31,63,77,126,159,191,239,253,254,255,255,254,253,234,15,97,255,111,213,164,146,138,124,161,213,255,255,255,255,255,255,255,239,191,161,127,87,63,15,63,95,126,173,207,253,111,38,255,0,221,168,153,148,131,149,205,251,255,255,255,255,255,255,255,255,255,255,255,255,255,255,243,201,149,127,63,47,32,63,111,143,77,103,255,0,227,172,153,151,135,147,205,251,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,228,146,83,87,103,255,0,231,189,153,143,152,205,248,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,228,152,111,255,0,147,231,158,153,148,152,205,242,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,205,185,255,29,227,198,153,156,202,242,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,228,185,255,29,126,237,158,153,156,202,242,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,241,185,255,15,234,249,228,201,228,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,243,205,255,32,63,95,126,147,209,248,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,248,213,255,233,253,255,255,255,255,255,255,255,255,255,255,255,255,255,253,213,185,255,238,233,255,255,255,255,255,255,255,255,255,255,255,255,255,253,233,208,255,238,238,255,255,255,255,255,255,255,255,255,255,255,238,208,255,238,243,255,255,255,255,255,255,255,255,255,241,208,255,238,251,255,255,255,255,255,255,255,248,208,255,233,253,255,255,255,255,253,251,213,255,247,254,253,254,251,255,255,255,255,255,253,233,255,248,253,249,253,253,253,254,235,214,255,253,251,253,251,254,254,254,253,247,214,255,253,255,254,253,254,253,253,214,255,253,255,254,255,255,238,255,255,238,255)
%Compression Index
var N : array 1 .. 920 of nat1 := init(102,1,1,1,1,2,42,1,1,1,1,1,1,1,1,1,1,37,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,32,1,1,1,1,6,1,1,1,1,1,1,1,1,1,1,28,1,1,1,1,1,9,1,1,1,1,1,1,1,1,2,24,1,1,1,1,1,13,1,1,1,1,1,1,1,1,1,1,1,19,1,1,1,1,1,17,1,1,1,1,1,1,1,1,1,1,15,1,1,1,1,1,1,1,21,1,1,1,1,1,1,14,1,1,1,1,1,1,1,24,1,1,1,14,1,1,1,1,1,1,1,24,1,1,1,1,13,1,1,1,1,1,1,1,17,2,5,1,1,1,1,13,1,1,1,1,1,1,1,1,16,2,5,1,1,1,1,1,12,1,1,1,2,1,1,1,15,1,2,1,4,1,1,1,1,1,12,1,1,1,2,1,1,1,14,1,1,1,1,1,1,3,1,2,1,1,1,11,1,1,1,2,1,1,1,1,12,1,1,1,2,1,1,1,2,1,2,1,1,1,11,1,1,1,3,1,1,1,11,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,11,1,1,1,3,1,1,1,10,1,1,1,1,1,2,1,1,1,1,1,1,3,1,1,1,10,1,1,1,3,1,1,1,1,8,1,1,1,1,1,4,1,1,1,1,1,3,1,1,1,10,1,1,1,4,1,1,1,1,1,1,1,3,1,1,1,1,1,6,1,1,1,1,4,1,1,1,9,1,1,1,4,1,1,1,1,1,4,1,1,1,1,1,1,2,4,1,1,1,1,4,1,1,1,9,1,1,1,5,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,4,1,1,1,5,1,1,1,8,1,1,1,10,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,4,1,1,1,8,1,1,1,11,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,4,1,1,1,7,1,1,1,10,1,1,1,1,1,1,1,1,1,2,1,1,3,3,1,1,4,1,1,1,7,1,1,1,9,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,3,1,1,1,7,1,1,1,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,7,1,1,1,7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,1,1,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,8,1,1,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,9,1,1,1,1,4,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,10,1,1,1,4,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,11,1,1,1,1,2,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,13,1,1,2,1,1,1,1,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,14,2,1,1,1,1,1,1,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,22,1,1,8,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,22,1,1,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,24,1,1,8,1,1,1,1,1,1,1,1,1,2,1,1,26,1,1,8,1,1,1,1,1,1,1,2,1,1,28,1,1,8,1,1,1,1,1,2,1,1,30,1,1,8,1,1,1,2,1,1,32,1,1,4,1,1,1,1,1,1,1,1,1,34,1,4,1,1,1,3,1,1,1,34,1,1,2,1,2,1,1,2,1,1,36,1,1,1,4,1,1,1,1,38,1,1,4,1,1,1,40,6,1,19)


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

end MyDocsPic
