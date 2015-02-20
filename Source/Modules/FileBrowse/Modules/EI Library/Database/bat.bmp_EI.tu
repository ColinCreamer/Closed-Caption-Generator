%--------Embedded Image File (EI) 5 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 35 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   bat.bmp_EI.tu
%File Num:       5 of 81
%Original Image: bat.bmp
%Detentions:     44 by 36
%Mega-Pixels:    0.0001



unit

module BatPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 44
    var height : int := 36
    var pixels : int := 1584


%RGB Color Channels
var R : array 1 .. 1175 of nat1 := init(215,129,201,129,189,129,189,249,248,248,247,248,246,247,246,245,245,244,243,244,243,243,242,242,242,241,241,241,174,80,68,173,236,240,189,129,189,249,249,248,248,247,247,247,246,247,246,245,245,244,244,244,243,242,242,242,241,242,241,138,115,77,77,120,173,148,153,228,240,189,129,189,249,249,248,248,247,248,248,247,246,246,246,245,245,245,244,243,243,242,242,239,228,134,94,105,103,88,70,64,85,67,164,240,189,129,189,249,249,248,248,248,247,246,246,246,245,246,245,244,244,243,243,243,242,223,119,98,96,125,137,134,126,115,111,122,88,181,240,189,129,189,250,250,249,249,249,248,248,247,246,246,246,245,245,245,243,241,244,243,242,178,162,153,169,175,152,195,202,163,134,115,96,231,240,189,129,189,251,250,250,249,249,248,248,248,247,246,247,246,246,245,245,181,122,125,196,243,244,243,195,227,223,230,148,232,241,241,215,159,141,90,223,240,189,129,189,250,250,249,250,249,249,248,247,247,237,177,201,246,223,88,68,68,139,244,243,188,180,178,225,227,116,241,242,241,211,168,152,95,156,227,240,189,129,189,251,250,250,250,249,249,249,248,248,208,104,94,90,176,131,102,111,95,92,162,146,79,69,116,185,210,110,185,242,241,161,205,201,156,86,179,240,240,189,129,189,251,250,250,249,248,248,192,138,145,97,84,101,119,117,111,93,78,79,101,95,78,149,201,192,106,138,131,165,224,223,220,127,201,241,240,189,129,189,251,251,250,250,249,249,248,249,198,167,153,150,145,143,133,145,130,125,118,115,114,106,109,157,178,194,192,161,179,206,207,173,195,174,240,240,240,240,189,129,189,251,251,250,250,250,218,147,190,123,169,169,162,157,152,140,113,132,136,132,129,127,116,116,182,162,159,181,176,167,176,144,200,241,240,240,189,129,189,252,252,251,251,251,239,129,114,93,158,190,179,173,173,171,161,156,157,161,149,138,139,138,116,119,109,93,121,172,174,138,176,241,241,241,241,240,189,129,193,252,251,252,251,250,173,181,207,198,201,196,194,190,201,196,204,210,209,204,203,177,149,149,137,144,135,100,175,218,179,226,242,242,241,240,189,129,195,252,252,252,251,251,232,234,198,199,198,199,196,193,173,225,247,243,231,210,188,160,160,158,156,174,155,238,237,241,242,242,242,241,241,241,241,189,129,195,252,252,251,251,205,195,198,197,189,160,248,248,247,246,229,207,185,170,170,171,137,226,243,243,243,242,242,242,241,241,189,129,195,253,253,252,251,252,238,153,199,199,192,159,238,249,249,248,247,247,246,246,224,200,185,184,182,97,183,228,240,243,242,242,242,241,189,129,196,253,253,252,252,252,185,111,142,201,196,182,154,249,249,249,248,248,247,247,247,239,193,197,197,199,145,82,103,209,244,243,243,242,242,242,242,189,129,196,253,252,252,252,178,206,210,199,189,189,164,161,249,249,248,249,248,248,247,247,247,240,185,189,192,198,200,201,135,187,244,244,243,243,242,242,242,189,129,196,253,253,253,253,187,197,200,191,144,175,155,151,250,249,249,248,248,247,248,247,234,169,184,127,175,203,207,160,200,244,243,243,243,243,242,242,189,129,196,254,254,253,253,228,187,202,193,196,192,165,129,246,249,250,249,249,248,247,247,214,155,188,197,196,197,188,198,237,244,243,243,242,243,242,242,189,129,196,254,254,253,253,253,253,246,203,191,188,190,173,138,193,251,249,249,248,162,147,196,201,210,158,219,246,245,244,243,243,243,243,242,189,129,216,254,254,253,253,172,209,198,196,177,161,112,204,250,250,249,249,249,195,149,172,216,222,119,198,245,245,244,244,243,243,243,211,129,217,254,254,254,253,254,193,154,202,205,206,208,191,175,112,167,220,239,237,217,158,165,192,225,223,221,223,153,96,227,246,245,244,244,243,244,243,211,129,217,255,254,254,254,254,222,197,197,198,199,203,205,195,189,157,130,130,137,158,185,200,222,225,224,226,222,233,157,238,246,245,245,244,244,243,244,243,211,129,217,253,254,253,254,250,207,189,202,202,197,200,204,199,200,199,198,200,204,207,220,220,220,229,218,233,209,192,246,246,245,245,245,245,244,243,211,129,217,253,254,254,254,254,254,253,243,229,240,215,192,195,197,201,204,202,190,203,213,213,213,215,221,182,199,230,216,247,247,246,246,245,245,245,244,244,244,243,211,129,217,253,255,255,254,253,253,253,184,190,191,192,196,198,195,152,192,208,208,208,212,217,116,230,248,247,246,246,246,245,245,244,245,244,243,211,129,217,253,254,255,254,254,254,253,254,253,205,176,183,189,185,201,195,198,201,209,209,211,206,216,153,213,248,248,247,247,246,245,245,245,245,244,211,129,218,253,254,255,253,254,247,223,190,186,222,187,197,193,199,157,218,225,217,201,193,247,249,248,247,247,248,247,247,246,245,246,245,244,245,211,129,218,253,254,254,253,252,227,247,252,232,188,189,190,174,251,234,229,249,249,248,249,248,247,248,247,247,245,245,244,211,129,214,253,254,255,253,254,253,253,253,252,234,218,231,240,251,251,250,250,249,249,249,248,249,248,248,248,247,247,247,246,245,245,211,129,211,129,211,103,211,103,211,103,211,129,199,129,193)
var G : array 1 .. 1175 of nat1 := init(215,132,201,132,198,132,198,249,248,248,248,248,247,247,246,246,245,245,244,244,243,243,243,242,242,241,242,241,178,99,81,173,236,240,198,132,198,249,248,249,247,248,248,246,246,246,246,245,245,244,244,243,243,243,242,242,241,241,241,152,155,109,85,121,173,150,153,228,240,198,132,198,249,249,249,248,247,248,247,247,246,245,246,246,245,244,244,243,242,242,242,238,229,139,122,139,136,121,99,85,118,85,164,240,198,132,198,250,249,248,249,248,247,247,246,245,246,246,245,245,244,243,243,243,243,223,126,109,129,161,169,164,160,152,149,162,117,181,240,198,132,198,249,250,249,248,249,248,247,247,247,246,246,246,245,244,243,242,243,243,243,183,191,181,196,201,167,204,215,191,171,153,107,231,240,198,132,198,250,250,249,249,248,249,248,248,247,247,247,246,246,246,245,181,122,125,196,243,243,242,200,246,245,245,157,233,242,241,224,193,177,100,223,240,198,132,198,251,250,250,249,249,248,248,248,247,237,177,200,245,223,106,90,84,140,244,243,188,180,182,251,242,120,242,241,241,212,198,191,115,156,227,240,198,132,198,250,251,250,250,249,249,249,248,248,208,112,116,90,176,135,137,147,124,95,161,146,94,78,121,206,225,117,185,241,241,164,233,236,195,106,179,240,240,198,132,198,251,250,249,249,249,248,207,182,191,123,101,132,159,157,148,120,92,98,135,126,93,164,215,203,112,140,135,183,248,250,255,159,201,240,240,198,132,198,251,251,251,250,250,249,248,249,207,219,201,197,191,188,172,169,167,165,158,154,150,141,127,172,192,207,204,174,197,229,231,190,209,181,239,241,240,240,198,132,198,252,251,251,250,249,218,146,190,132,221,221,212,206,202,184,134,174,179,174,170,166,154,130,192,175,173,195,189,183,198,161,201,241,241,240,198,132,198,252,251,250,251,250,239,143,139,109,203,248,235,230,226,217,199,189,193,201,195,185,182,182,152,136,133,114,130,183,187,155,177,241,241,241,240,241,198,132,201,252,252,252,251,251,178,229,255,253,255,255,253,236,229,217,213,218,219,220,221,215,199,196,181,189,178,108,178,229,189,226,242,241,241,240,198,132,203,252,251,251,252,251,240,255,255,255,255,255,239,216,182,226,247,244,236,223,225,213,209,207,205,214,159,239,240,240,242,242,241,241,242,241,241,198,132,203,252,252,252,251,210,248,255,246,210,167,248,247,247,246,235,225,234,225,224,220,146,226,244,243,242,242,242,241,242,241,198,132,203,253,253,252,252,251,238,160,251,255,226,175,237,249,248,248,247,248,247,246,231,232,244,242,237,112,183,227,240,243,243,242,242,241,198,132,204,253,252,253,253,252,185,117,169,255,249,206,159,249,248,248,249,248,248,246,246,242,223,252,255,255,180,89,105,208,243,243,242,243,242,242,241,198,132,204,253,253,253,252,200,248,255,247,223,233,187,163,250,249,249,249,248,247,247,248,246,241,219,242,226,246,255,249,159,186,244,244,243,242,242,242,241,198,132,204,254,253,252,252,215,244,247,230,161,214,181,153,250,250,249,248,248,248,247,248,235,203,233,145,218,255,255,189,200,244,244,243,243,243,243,242,198,132,204,254,253,254,253,235,208,234,236,238,232,191,132,246,250,249,249,249,248,248,247,215,191,240,249,253,243,210,205,237,244,244,243,243,242,243,242,198,132,204,254,254,254,253,253,252,246,214,229,228,231,202,150,194,250,249,249,248,169,184,249,255,255,173,219,245,245,244,244,244,243,242,242,198,132,221,254,254,253,253,175,233,226,229,206,181,116,204,250,249,250,249,248,198,173,206,255,253,123,198,244,245,245,244,244,243,242,217,132,222,254,254,253,254,253,194,168,223,225,227,231,208,189,116,167,220,239,237,217,161,183,212,253,255,255,253,174,99,227,245,245,244,244,244,244,243,217,132,222,254,254,254,253,254,231,216,215,217,219,223,226,212,202,169,139,136,145,170,202,221,250,255,255,255,255,255,165,238,245,245,245,245,244,244,243,243,217,132,222,254,254,254,254,250,222,208,217,220,215,220,224,218,217,216,214,217,223,230,248,249,251,255,247,255,229,193,246,245,246,245,244,245,244,244,217,132,222,254,255,255,254,255,254,254,244,233,240,223,210,212,216,220,224,221,206,224,236,237,238,241,249,193,199,234,218,247,246,247,246,246,245,244,245,244,244,243,217,132,222,254,255,255,254,254,253,253,186,207,207,210,213,216,213,163,210,229,230,231,237,241,121,230,248,247,247,246,246,245,245,244,244,244,244,217,132,222,254,255,254,255,254,254,254,253,253,212,192,199,204,201,217,213,217,219,229,228,230,230,241,165,212,248,247,247,246,246,246,245,245,244,244,217,132,223,254,254,254,254,253,248,229,202,189,223,192,215,211,216,163,218,226,240,215,194,246,249,248,248,247,247,247,246,247,246,246,245,245,244,217,132,223,254,255,255,254,253,229,247,252,233,206,205,202,175,251,235,229,250,249,249,248,249,247,248,247,246,246,245,245,217,132,219,254,255,254,254,254,253,254,253,253,238,222,234,241,251,250,250,250,249,250,249,248,248,248,247,247,247,246,246,246,245,245,217,132,217,132,217,120,217,120,217,120,217,132,200,132,194)
var B : array 1 .. 1175 of nat1 := init(216,136,201,136,209,136,209,248,248,247,248,247,247,246,246,246,246,245,244,243,243,242,242,243,242,242,241,241,182,121,97,173,236,240,209,136,209,249,249,248,248,247,248,247,246,246,246,245,244,245,244,243,243,243,243,242,241,241,241,167,204,148,94,123,173,151,153,228,240,209,136,209,249,248,248,249,247,247,247,247,246,246,246,245,245,244,244,243,242,243,242,239,228,145,154,177,173,161,132,109,160,104,164,240,209,136,209,249,249,249,248,248,247,246,246,246,246,245,245,245,244,243,244,243,243,223,134,121,164,201,205,196,198,194,195,215,155,182,240,209,136,209,250,249,249,249,248,248,248,248,247,246,245,245,245,244,243,242,243,243,243,188,219,212,228,230,182,213,226,222,216,197,118,231,240,209,136,209,250,250,250,249,249,248,248,247,247,247,247,246,245,246,245,180,122,125,196,244,244,243,205,255,255,255,166,233,241,241,233,227,212,111,223,240,209,136,209,251,250,249,249,249,249,248,247,247,237,176,200,245,223,124,120,101,140,244,243,187,180,185,255,251,124,242,242,241,213,223,219,132,156,227,240,209,136,209,251,251,250,249,250,249,248,248,247,208,120,143,91,176,135,179,197,162,95,161,146,112,86,123,217,236,125,184,242,242,167,250,255,214,121,179,241,240,209,136,209,251,250,250,249,248,248,214,236,255,157,120,170,212,211,197,154,110,122,182,171,110,177,228,214,117,141,138,197,255,255,255,176,202,241,240,209,136,209,252,251,251,250,250,249,249,248,210,255,255,255,254,253,226,195,216,223,211,204,200,189,149,187,207,222,217,187,212,249,249,204,220,186,240,241,240,241,209,136,209,252,251,251,250,250,219,147,190,137,245,255,255,255,255,235,150,230,244,233,227,223,206,144,203,188,187,212,205,200,219,177,203,241,240,240,209,136,209,252,252,251,251,250,239,147,146,116,211,255,255,255,255,247,227,214,227,246,253,249,243,244,200,156,161,136,136,193,202,173,177,241,242,241,240,241,209,136,212,252,252,251,251,251,180,232,255,254,255,255,255,241,237,226,220,223,225,226,232,250,255,255,242,253,235,114,181,238,199,227,242,241,241,241,209,136,213,252,252,251,251,251,247,255,255,255,255,255,239,224,185,226,247,245,239,228,247,255,255,255,255,255,162,239,243,240,243,242,242,241,241,241,240,209,136,213,253,252,252,251,213,250,255,246,218,171,248,247,247,246,238,230,251,255,255,252,150,226,244,243,243,242,241,241,241,241,209,136,213,253,252,252,252,251,238,164,253,255,231,184,238,248,248,248,248,247,247,246,236,239,255,255,252,118,183,227,241,243,242,242,241,241,209,136,214,253,252,253,252,252,187,121,176,255,250,215,162,249,249,248,249,248,247,247,246,244,233,253,255,255,187,95,106,209,243,243,243,243,243,242,241,209,136,214,253,253,252,252,210,255,255,248,226,236,196,164,250,249,249,249,248,247,248,247,247,241,230,246,228,248,255,252,167,186,244,243,243,243,243,242,241,209,136,214,254,253,253,252,229,255,255,240,171,221,190,154,250,249,249,249,248,248,247,247,235,217,240,154,223,255,255,194,200,244,244,244,243,242,242,242,209,136,214,254,254,253,253,240,215,249,255,252,244,201,135,246,250,249,250,249,248,247,247,215,208,243,251,254,245,216,208,237,244,244,243,242,243,242,242,209,136,214,254,253,253,254,253,253,247,223,255,255,253,214,156,194,250,250,249,248,174,200,249,255,255,176,219,245,245,244,244,243,243,242,242,209,136,228,254,253,254,253,178,254,255,255,227,189,117,204,250,249,249,249,248,199,187,212,255,253,129,197,245,245,245,244,244,243,242,224,136,228,254,255,254,253,253,195,182,250,251,254,255,222,196,118,167,220,239,238,217,162,191,220,253,255,255,254,180,102,226,245,245,245,244,243,243,243,224,136,228,254,254,253,254,254,236,240,239,243,245,249,252,227,209,176,144,140,150,178,211,227,251,255,255,255,255,255,169,238,246,245,244,245,244,243,243,243,224,136,228,253,254,254,253,250,236,228,232,243,240,245,251,239,232,228,226,229,234,241,255,255,255,255,248,255,230,193,246,246,245,245,245,245,244,243,224,136,228,253,255,254,254,254,254,253,246,235,242,231,233,235,239,245,250,244,220,246,255,255,255,255,255,196,199,235,221,247,246,246,246,246,245,245,244,244,243,244,224,136,228,253,254,255,254,254,254,253,188,227,228,231,236,240,234,172,233,255,255,255,255,254,124,230,248,247,247,247,246,246,245,245,244,244,243,224,136,228,253,255,254,255,255,254,254,254,254,216,211,219,221,217,238,234,239,243,254,248,251,255,255,173,213,248,247,247,246,246,246,245,244,245,244,224,136,229,253,254,254,253,254,249,236,216,190,222,196,236,232,235,167,218,227,255,226,195,247,248,249,248,248,248,247,247,246,245,246,245,245,244,224,136,229,253,255,254,253,253,230,246,252,234,225,227,216,175,251,236,229,249,249,249,248,249,248,247,246,246,246,245,245,224,136,226,253,255,255,253,253,253,253,253,253,240,227,237,240,251,251,251,249,249,249,249,249,248,248,248,247,247,246,247,246,246,245,224,136,224,136,224,145,224,145,224,145,224,136,202,136,196)
%Compression Index
var N : array 1 .. 1175 of nat1 := init(1,42,1,1,42,2,1,1,1,1,1,1,1,1,2,1,1,3,1,1,2,1,1,1,2,1,1,2,1,1,1,1,1,8,1,2,1,1,1,1,1,1,1,1,1,1,1,3,1,1,2,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,4,1,2,1,1,1,1,1,1,1,1,2,1,1,1,1,2,1,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,2,1,2,1,1,1,1,3,1,1,1,1,1,1,1,2,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,2,1,1,1,1,1,1,2,1,1,2,1,1,1,2,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,2,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,2,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,2,2,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,2,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,2,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,2,1,3,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,2,1,1,3,1,2,1,1,2,1,1,1,2,1,2,2,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,2,1,2,1,1,1,1,2,1,1,1,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,2,1,3,1,2,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,2,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,2,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,4,1,1,1,1,1,1,1,1,2,1,2,1,1,1,2,1,2,1,2,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,2,1,1,1,1,2,1,2,1,3,1,1,2,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,2,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,2,1,1,1,1,2,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,3,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,2,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,3,1,1,1,2,1,1,1,1,2,1,5,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,2,1,5,1,1,4,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,2,2,1,3,1,1,1,2,1,5,1,1,3,1,1,1,1,2,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,2,42,2,31,2,2,2,2,2,1,1,1,42,1)


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

end BatPic