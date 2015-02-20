%--------Embedded Image File (EI) 29 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 50 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   flv.bmp_EI.tu
%File Num:       29 of 81
%Original Image: flv.bmp
%Detentions:     48 by 48
%Mega-Pixels:    0.0002



unit

module FlvPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 48
    var height : int := 48
    var pixels : int := 2304


%RGB Color Channels
var R : array 1 .. 1664 of nat1 := init(255,254,255,254,251,252,251,253,252,253,255,253,255,229,176,234,253,251,255,253,255,232,177,236,255,164,0,181,255,246,198,212,213,212,211,212,211,210,210,209,209,208,208,206,185,252,255,167,0,183,255,169,0,186,255,241,134,165,164,163,161,160,159,158,157,155,153,152,151,150,151,146,99,250,255,173,0,188,255,158,0,176,255,240,144,172,172,172,171,170,169,168,167,166,165,163,162,161,160,159,158,156,157,153,107,251,255,161,0,179,255,251,240,145,174,175,173,174,172,173,170,169,170,169,168,166,165,164,163,160,160,157,156,157,153,107,251,255,253,255,232,192,236,252,240,148,177,176,175,174,173,172,171,170,169,168,167,165,164,163,162,160,158,157,156,157,153,107,251,255,238,196,241,255,162,0,179,255,239,149,179,178,177,176,175,174,173,172,172,169,168,167,167,164,163,161,160,159,157,153,107,250,255,166,0,183,255,168,0,185,255,239,151,181,179,180,179,176,175,174,173,172,171,169,168,167,165,163,162,161,158,153,107,250,255,173,0,189,255,157,0,174,255,239,152,183,182,181,181,180,179,178,177,176,175,173,172,171,170,168,167,165,164,162,160,159,153,107,249,255,162,0,178,255,254,246,245,247,247,238,155,185,184,184,183,183,182,181,180,178,178,178,175,174,172,171,170,168,166,165,161,161,153,107,249,253,253,252,254,253,255,235,209,238,248,238,161,190,191,189,189,186,187,185,183,182,181,180,178,177,176,175,173,172,170,168,167,164,164,156,110,247,253,240,213,243,252,255,159,0,176,254,237,165,193,193,192,192,190,191,188,186,185,184,182,181,179,178,176,175,173,171,170,167,166,159,115,247,255,164,0,180,255,166,0,182,253,237,168,194,195,195,193,194,193,191,190,190,188,186,186,184,182,181,180,178,176,174,172,171,163,120,246,255,171,0,187,255,155,0,173,253,237,170,196,196,195,196,195,195,193,192,191,190,189,188,188,185,184,182,181,179,177,176,173,172,164,121,246,255,160,0,177,255,254,235,219,238,244,236,170,197,199,197,196,195,194,193,191,191,190,188,187,186,184,183,182,180,178,176,174,173,165,121,246,251,242,225,245,250,255,253,244,255,246,243,235,171,199,199,198,198,198,197,196,194,193,192,189,190,189,187,185,184,182,179,179,175,174,167,121,245,248,253,255,252,249,255,219,169,224,244,235,173,201,200,199,199,197,196,195,194,192,189,190,189,188,186,184,182,180,179,176,175,168,122,245,251,226,174,231,250,255,156,0,174,249,235,174,202,202,202,200,199,198,196,196,194,191,189,189,187,186,184,181,180,177,177,169,122,244,255,163,0,178,255,162,0,179,249,234,176,204,205,205,204,204,202,201,200,198,197,196,194,193,191,191,189,188,186,184,183,179,177,170,123,243,255,168,0,184,255,151,0,169,249,234,170,198,197,196,196,196,194,194,192,191,190,187,186,184,183,183,181,178,176,174,171,171,164,117,243,255,156,0,173,255,252,244,255,245,240,230,126,151,152,151,151,150,149,149,148,146,146,144,143,142,141,140,137,137,136,133,133,129,129,123,87,242,247,253,255,253,246,255,254,222,185,226,241,228,119,134,135,134,133,133,132,131,132,131,129,129,127,126,125,123,122,120,101,241,248,229,190,233,248,255,153,0,171,245,238,249,250,251,252,253,254,255,244,254,160,0,176,254,255,160,0,177,245,237,240,238,238,238,238,238,239,240,241,242,243,244,245,246,248,251,243,253,166,0,181,253,255,149,0,167,245,231,198,220,220,221,220,219,217,216,215,214,213,211,209,207,206,204,203,201,200,197,197,191,154,239,253,156,0,173,253,255,253,235,237,236,230,189,218,217,217,216,215,214,213,210,208,206,204,203,201,199,197,195,193,191,189,185,186,177,129,239,244,244,243,245,243,255,254,223,199,227,236,230,191,220,221,220,220,219,218,216,215,213,212,210,208,206,204,203,200,198,196,194,192,190,189,180,134,238,245,233,206,236,244,255,151,0,168,242,229,193,223,224,223,221,221,220,218,217,215,213,211,209,208,205,204,202,200,198,195,193,190,190,181,135,238,252,158,0,174,251,255,158,0,174,242,229,198,226,226,225,224,223,220,219,216,215,213,211,209,207,205,203,201,199,195,194,191,191,184,139,238,252,166,0,181,251,255,148,0,166,241,228,201,228,230,228,227,227,226,224,223,219,218,216,214,214,211,210,206,204,203,200,199,195,194,187,142,237,249,154,0,170,248,255,253,226,211,229,235,231,206,235,234,233,233,232,230,229,227,225,223,221,219,217,215,213,208,205,201,199,194,193,185,139,231,235,226,209,228,235,255,229,234,231,232,216,178,200,201,201,200,199,198,197,196,194,192,190,188,187,185,183,180,187,198,197,189,184,181,172,130,212,213,215,223,220,222,214,213,212,211,212,202,144,149,150,131,100,110,109,108,108,107,106,105,104,103,104,102,102,101,101,97,132,189,188,178,168,165,156,116,190,192,174,139,186,208,95,98,106,107,106,107,106,105,108,111,110,108,111,112,110,109,108,107,105,102,101,99,100,99,98,98,96,96,86,114,181,176,161,146,142,133,97,160,167,103,0,127,226,119,126,147,146,148,149,150,151,150,145,148,152,151,150,143,142,141,146,147,138,136,139,142,141,138,137,134,132,127,126,127,108,112,170,160,138,119,113,106,77,126,136,88,0,125,255,124,134,161,159,159,161,161,162,163,160,238,196,159,160,172,238,235,244,185,144,223,236,198,144,149,146,143,141,138,134,135,114,110,161,144,118,95,89,81,58,91,94,85,122,236,255,141,151,183,183,184,184,184,184,183,180,255,213,178,182,191,254,213,174,177,164,250,234,219,163,164,163,158,155,153,153,148,145,130,113,148,124,96,77,68,61,60,165,247,220,242,255,155,166,195,192,193,191,193,193,192,190,253,225,204,193,199,252,218,183,185,196,247,207,247,195,170,170,167,165,161,158,155,154,136,116,143,117,94,255,239,211,232,255,168,177,202,200,201,201,202,202,199,253,244,242,209,204,252,223,190,188,232,246,191,255,210,177,177,174,171,167,165,161,159,142,118,140,113,89,255,250,240,227,206,231,255,179,188,211,209,210,210,211,210,207,252,227,205,204,211,252,225,197,192,242,246,196,251,215,183,184,180,175,172,169,166,163,146,120,138,112,87,255,237,224,202,232,255,188,196,218,217,218,217,216,253,236,225,213,216,252,229,201,202,244,247,193,233,237,194,184,184,180,174,170,167,166,150,123,136,110,83,252,221,200,231,255,198,206,224,224,225,224,223,222,221,254,252,253,224,219,254,230,202,227,253,225,192,218,255,203,185,185,181,176,171,169,166,152,125,133,107,72,235,197,228,255,206,214,232,232,232,232,232,231,229,228,225,220,217,215,217,213,208,209,207,203,198,198,198,192,187,189,186,185,181,175,171,168,164,153,122,117,86,148,205,227,255,203,211,222,223,224,224,222,221,219,217,215,213,212,210,207,203,203,199,197,194,192,189,184,183,180,176,174,168,165,160,158,154,150,145,108,85,64,207,225,255,231,232,232,233,234,234,233,232,232,228,212,213,210,209,208,207,206,204,203,202,201,199,197,195,193,193,192,191,188,182,176,152,125,119,233,255,253,226,228,227,228,227,228,228,229,230,230,231,232,233,232,225,214,199,175,228,255,250,225,226,227,226,227,225,226,225,226,225,227,226,228,227,229,230,228,223,216,202,233,255)
var G : array 1 .. 1664 of nat1 := init(255,254,255,254,251,252,251,253,252,253,255,253,255,229,176,234,253,253,255,254,255,232,177,236,255,164,0,181,255,242,126,140,139,139,139,139,138,137,136,136,135,135,134,134,120,252,255,167,0,183,255,169,0,186,255,230,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,249,255,173,0,188,255,158,0,176,255,232,0,16,15,14,14,13,11,10,9,8,7,6,5,3,2,1,0,0,0,0,0,250,255,161,0,179,255,254,231,0,19,18,16,17,16,15,14,13,12,11,10,7,7,6,5,4,2,0,0,0,0,0,250,255,253,255,232,192,236,254,231,0,20,19,18,17,16,15,14,13,12,10,9,8,7,5,4,2,0,0,0,0,0,0,250,255,238,196,241,255,162,0,179,255,230,0,21,21,20,19,18,17,16,16,14,12,11,9,8,7,6,4,2,1,0,0,0,250,255,166,0,183,255,168,0,185,255,230,0,24,24,23,22,19,18,17,16,14,13,12,11,8,8,6,3,3,0,0,0,249,255,173,0,189,255,157,0,174,255,230,1,26,25,25,24,24,22,21,20,19,18,16,15,14,12,11,9,7,6,4,2,0,0,0,249,255,162,0,178,255,254,246,245,247,250,229,2,27,28,27,27,26,26,24,23,22,21,20,18,17,15,14,13,11,9,7,3,2,0,0,249,255,253,252,254,253,255,235,209,238,250,229,12,38,37,38,36,31,31,30,27,24,24,22,20,19,18,17,15,14,12,10,9,5,4,2,0,248,255,240,213,243,252,255,159,0,176,255,229,22,47,46,47,46,46,45,38,32,31,30,28,27,26,24,22,21,19,16,15,12,10,8,0,246,255,164,0,180,255,166,0,182,255,229,25,49,49,50,49,47,49,47,46,45,43,40,39,38,37,33,33,31,27,26,22,21,19,0,246,255,171,0,187,255,155,0,173,255,228,26,50,51,50,51,49,50,47,47,46,44,43,40,39,38,37,34,33,31,28,26,22,22,18,0,246,255,160,0,177,255,254,235,219,238,247,227,26,50,51,50,50,49,47,47,44,43,43,40,40,37,37,35,33,31,29,27,23,21,20,0,246,252,242,225,245,250,255,253,244,255,246,245,227,26,50,51,49,50,48,48,47,44,44,43,42,40,38,35,35,33,31,28,27,23,23,20,0,245,249,253,255,252,249,255,219,169,224,247,226,26,51,49,50,49,48,47,45,45,42,40,39,37,36,33,32,30,27,26,23,21,20,0,245,253,226,174,231,250,255,156,0,174,252,225,26,51,50,49,49,47,46,44,43,41,39,36,35,34,32,30,28,26,23,20,18,0,244,255,163,0,178,255,162,0,179,251,225,26,52,52,50,51,49,48,48,46,44,44,42,40,39,37,36,34,32,30,28,26,23,20,18,0,244,255,168,0,184,255,151,0,169,251,224,24,49,48,48,47,46,45,44,43,41,40,38,37,35,33,32,31,29,25,25,20,19,17,0,242,255,156,0,173,255,252,244,255,245,242,221,8,32,32,32,31,31,31,29,28,28,26,25,23,22,21,20,18,17,15,14,12,10,9,6,0,242,248,253,255,253,246,255,254,222,185,226,243,224,54,71,71,71,70,69,68,68,68,67,66,65,64,63,61,60,59,57,37,240,249,229,190,233,248,255,153,0,171,245,239,255,255,255,255,255,255,255,245,254,160,0,176,254,255,160,0,177,245,238,252,252,253,252,253,252,253,254,255,255,255,255,255,255,255,255,244,253,166,0,181,253,255,149,0,167,247,225,78,97,96,97,97,96,94,94,92,92,89,87,85,84,82,81,79,77,76,73,71,70,46,239,254,156,0,173,253,255,253,235,237,239,221,32,58,58,57,55,56,55,54,50,49,47,45,43,41,40,37,35,33,31,29,24,23,20,0,240,245,244,243,245,243,255,254,223,199,227,239,221,41,65,66,66,65,64,63,62,61,59,58,56,54,52,50,48,46,44,42,39,37,32,31,28,0,239,246,233,206,236,244,255,151,0,168,245,220,43,69,70,69,67,65,65,62,61,61,59,57,55,54,51,49,47,45,43,40,38,34,32,29,0,238,254,158,0,174,251,255,158,0,174,244,220,52,79,78,75,74,73,72,67,62,60,58,56,54,52,50,48,46,44,40,39,35,36,37,5,238,253,166,0,181,251,255,148,0,166,244,220,59,84,85,83,82,83,82,80,77,73,72,69,67,65,62,60,58,57,54,52,50,45,44,43,11,237,251,154,0,170,248,255,253,226,211,229,237,221,62,87,86,86,85,84,82,82,78,77,74,72,70,68,66,64,62,58,56,54,48,46,44,11,230,237,226,209,228,235,255,233,237,235,237,211,52,74,75,74,74,73,72,70,69,67,66,63,61,60,59,57,54,54,57,55,49,45,43,39,11,212,214,215,223,220,222,189,189,189,189,190,180,121,126,130,106,23,34,35,35,34,34,32,31,31,29,30,28,27,27,25,23,35,52,51,47,40,38,34,9,190,194,174,139,186,208,0,0,0,0,0,0,0,0,0,0,0,0,0,9,9,8,8,8,8,7,7,7,7,7,7,7,7,7,5,23,50,46,41,35,32,29,6,160,168,103,0,127,226,12,13,16,15,15,15,15,16,15,0,6,16,16,12,0,0,0,8,15,0,0,3,14,14,14,15,14,13,13,14,12,9,23,46,41,35,28,24,22,4,126,137,88,0,125,255,13,14,16,17,16,16,16,16,15,8,219,103,7,12,44,217,212,238,87,0,184,217,125,2,15,15,15,14,14,14,13,9,23,44,37,29,19,16,14,0,92,95,85,122,236,255,14,16,21,23,24,24,25,26,24,16,255,121,5,16,54,255,130,1,15,0,245,198,160,8,16,16,17,17,15,16,16,15,11,22,39,30,21,20,15,11,23,164,248,220,242,255,24,27,35,35,35,36,37,37,36,26,255,154,77,42,59,252,136,16,21,63,234,106,234,80,10,18,18,18,17,17,17,16,12,22,39,28,25,255,239,211,232,255,32,35,46,46,48,48,49,47,38,255,214,205,82,66,253,141,27,20,179,229,44,255,109,12,20,19,18,18,17,17,17,13,22,38,27,22,255,250,240,227,206,231,255,42,46,57,57,58,59,59,57,49,253,141,46,47,76,253,145,34,22,211,231,49,247,123,22,23,22,19,18,18,18,17,14,23,38,27,23,255,237,224,202,232,255,51,56,67,67,68,66,59,255,175,119,71,81,254,148,38,52,216,231,32,180,199,51,24,25,22,19,17,18,18,14,23,37,26,22,255,221,200,231,255,59,65,78,80,82,81,79,76,68,255,245,255,110,84,255,156,34,144,254,142,22,121,255,78,24,27,24,19,17,18,18,14,23,37,26,15,241,197,228,255,65,72,90,91,92,94,91,89,86,85,79,58,54,50,62,59,42,48,54,43,29,35,43,29,14,26,28,25,22,18,17,17,17,16,24,33,12,122,208,227,255,55,60,71,73,74,72,72,70,67,66,62,59,58,54,52,49,47,44,42,38,36,33,30,28,25,21,17,14,11,8,8,7,6,6,11,15,0,211,226,255,166,167,166,167,167,168,167,167,167,164,148,149,148,147,146,145,144,144,143,142,142,141,140,139,138,137,137,136,133,129,119,109,99,86,235,255,255,234,236,235,235,234,236,236,236,238,237,239,239,240,239,232,221,204,179,232,255,250,225,226,227,226,227,225,226,225,226,225,227,226,228,227,229,230,228,223,216,202,233,255)
var B : array 1 .. 1664 of nat1 := init(255,254,255,254,251,252,251,253,252,253,255,253,255,229,176,234,253,253,255,254,255,232,177,236,255,164,0,181,255,242,126,140,139,139,139,139,138,137,136,136,135,135,134,134,120,252,255,167,0,183,255,169,0,186,255,230,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,249,255,173,0,188,255,158,0,176,255,232,0,16,15,14,14,13,11,10,9,8,7,6,5,3,2,1,0,0,0,0,0,250,255,161,0,179,255,254,231,0,19,18,16,17,16,15,14,13,12,11,10,7,7,6,5,4,2,0,0,0,0,0,250,255,253,255,232,192,236,254,231,0,20,19,18,17,16,15,14,13,12,10,9,8,7,5,4,2,0,0,0,0,0,0,250,255,238,196,241,255,162,0,179,255,230,0,21,21,20,19,18,17,16,16,14,12,11,9,8,7,6,4,2,1,0,0,0,250,255,166,0,183,255,168,0,185,255,230,0,24,24,23,22,19,18,17,16,14,13,12,11,8,8,6,3,3,0,0,0,249,255,173,0,189,255,157,0,174,255,230,1,26,25,25,24,24,22,21,20,19,18,16,15,14,12,11,9,7,6,4,2,0,0,0,249,255,162,0,178,255,254,246,245,247,250,229,2,27,28,27,27,26,26,24,23,22,21,20,18,17,15,14,13,11,9,7,3,2,0,0,249,255,253,252,254,253,255,235,209,238,250,229,12,38,37,38,36,31,31,30,27,24,24,22,20,19,18,17,15,14,12,10,9,5,4,2,0,248,255,240,213,243,252,255,159,0,176,255,229,22,47,46,47,46,46,45,38,32,31,30,28,27,26,24,22,21,19,16,15,12,10,8,0,246,255,164,0,180,255,166,0,182,255,229,25,49,49,50,49,47,49,47,46,45,43,40,39,38,37,33,33,31,27,26,22,21,19,0,246,255,171,0,187,255,155,0,173,255,228,26,50,51,50,51,49,50,47,47,46,44,43,40,39,38,37,34,33,31,28,26,22,22,18,0,246,255,160,0,177,255,254,235,219,238,247,227,26,50,51,50,50,49,47,47,44,43,43,40,40,37,37,35,33,31,29,27,23,21,20,0,246,252,242,225,245,250,255,253,244,255,246,245,227,26,50,51,49,50,48,48,47,44,44,43,42,40,38,35,35,33,31,28,27,23,23,20,0,245,249,253,255,252,249,255,219,169,224,247,226,26,51,49,50,49,48,47,45,45,42,40,39,37,36,33,32,30,27,26,23,21,20,0,245,253,226,174,231,250,255,156,0,174,252,225,26,51,50,49,49,47,46,44,43,41,39,36,35,34,32,30,28,26,23,20,18,0,244,255,163,0,178,255,162,0,179,251,225,26,52,52,50,51,49,48,48,46,44,44,42,40,39,37,36,34,32,30,28,26,23,20,18,0,244,255,168,0,184,255,151,0,169,251,224,24,49,48,48,47,46,45,44,43,41,40,38,37,35,33,32,31,29,25,25,20,19,17,0,242,255,156,0,173,255,252,244,255,245,242,221,8,32,32,32,31,31,31,29,28,28,26,25,23,22,21,20,18,17,15,14,12,10,9,6,0,242,248,253,255,253,246,255,254,222,185,226,243,224,54,71,71,71,70,69,68,68,68,67,66,65,64,63,61,60,59,57,37,240,249,229,190,233,248,255,153,0,171,245,239,255,255,255,255,255,255,255,245,254,160,0,176,254,255,160,0,177,245,238,252,252,253,252,253,252,253,254,255,255,255,255,255,255,255,255,244,253,166,0,181,253,255,149,0,167,247,225,78,97,96,97,97,96,94,94,92,92,89,87,85,84,82,81,79,77,76,73,71,70,46,239,254,156,0,173,253,255,253,235,237,239,221,32,58,58,57,55,56,55,54,50,49,47,45,43,41,40,37,35,33,31,29,24,23,20,0,240,245,244,243,245,243,255,254,223,199,227,239,221,41,65,66,66,65,64,63,62,61,59,58,56,54,52,50,48,46,44,42,39,37,32,31,28,0,239,246,233,206,236,244,255,151,0,168,245,220,43,69,70,69,67,65,65,62,61,61,59,57,55,54,51,49,47,45,43,40,38,34,32,29,0,238,254,158,0,174,251,255,158,0,174,244,220,52,79,78,75,74,73,72,67,62,60,58,56,54,52,50,48,46,44,40,39,35,36,37,5,238,253,166,0,181,251,255,148,0,166,244,220,59,84,85,83,82,83,82,80,77,73,72,69,67,65,62,60,58,57,54,52,50,45,44,43,11,237,251,154,0,170,248,255,253,226,211,229,237,221,62,87,86,86,85,84,82,82,78,77,74,72,70,68,66,64,62,58,56,54,48,46,44,11,230,237,226,209,228,235,255,233,237,235,237,211,52,74,75,74,74,73,72,70,69,67,66,63,61,60,59,57,54,54,57,55,49,45,43,39,11,212,214,215,223,220,222,189,189,189,189,191,180,122,127,131,106,24,35,35,35,34,35,33,32,31,30,30,29,28,27,26,24,36,52,51,47,40,38,34,9,190,194,174,139,186,208,0,0,0,0,0,0,0,0,0,0,0,0,3,11,11,10,10,10,10,10,10,9,9,9,10,9,9,10,7,24,50,46,41,35,32,29,6,160,168,103,0,127,226,15,15,18,18,18,19,19,19,18,0,9,19,19,15,0,0,0,11,19,1,0,6,17,18,17,17,16,17,15,15,16,12,24,46,41,35,28,24,22,4,126,137,88,0,125,255,15,17,20,20,19,20,19,20,19,13,219,106,10,15,46,218,212,238,90,0,184,218,126,6,18,18,18,17,17,16,17,13,24,44,37,29,19,16,14,0,92,95,85,122,236,255,17,19,25,26,27,28,28,29,27,19,255,123,10,19,56,255,132,5,19,0,245,198,161,12,19,21,20,20,20,18,19,18,14,23,39,30,21,20,15,11,23,164,248,220,242,255,27,30,38,40,39,40,40,41,40,31,254,156,80,45,63,252,138,20,25,66,234,107,234,82,14,22,22,21,20,20,20,19,16,23,39,28,25,255,239,211,232,255,36,40,50,51,51,50,53,51,42,255,216,207,85,69,253,144,30,25,181,229,48,255,111,15,24,22,22,21,21,20,20,16,23,38,27,22,255,250,240,227,206,231,255,46,50,60,61,61,63,63,61,52,253,142,50,51,80,253,147,38,26,211,232,53,247,126,25,27,26,23,21,22,21,21,17,23,38,27,23,255,237,224,202,232,255,54,59,71,70,72,70,62,254,177,121,74,85,253,149,42,57,217,231,35,180,201,54,28,29,26,22,21,22,21,18,24,37,26,22,255,221,200,231,255,60,67,83,83,85,84,82,81,71,255,246,255,112,89,255,156,38,145,253,145,27,123,255,81,28,31,28,23,21,22,21,17,24,37,26,15,241,197,228,255,69,76,93,94,95,97,94,93,90,88,82,61,57,55,66,63,45,51,59,47,33,39,47,33,18,30,32,29,26,21,21,21,20,19,26,33,12,122,208,227,255,58,64,75,76,78,76,75,73,71,69,65,63,61,58,55,52,51,48,46,42,40,37,33,32,28,25,20,18,15,12,12,10,10,9,13,15,0,211,226,255,168,168,168,169,169,170,169,169,168,165,149,150,149,149,148,147,146,145,144,143,143,142,141,140,139,139,138,137,135,130,120,110,99,86,235,255,255,234,236,235,235,234,236,235,236,237,237,239,239,240,239,231,221,204,179,232,255,250,225,226,227,226,227,225,226,225,226,225,227,226,228,227,229,230,228,223,216,202,233,255)
%Compression Index
var N : array 1 .. 1664 of nat1 := init(11,1,2,1,3,3,1,1,2,19,3,1,12,1,1,1,1,1,25,1,1,1,1,1,13,1,1,1,1,1,1,1,1,2,1,1,2,2,1,2,1,1,7,1,1,1,1,1,1,1,13,1,1,1,1,1,1,2,2,2,1,1,1,1,1,2,1,1,1,5,1,1,1,1,1,1,1,1,13,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,3,1,1,1,1,1,1,1,16,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,4,1,12,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,13,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,13,1,1,1,1,1,1,2,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,13,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,13,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,13,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,2,1,1,2,2,1,2,2,1,1,1,1,1,1,1,1,12,1,1,1,1,1,8,4,3,2,3,2,3,1,1,1,1,1,1,12,1,1,1,1,1,1,2,1,1,1,1,2,3,1,2,2,3,2,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,2,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,1,1,1,1,2,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,2,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,3,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,7,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,21,1,1,2,3,1,1,1,1,2,1,1,1,2,2,1,1,1,1,1,1,22,1,1,1,1,1,1,1,1,1,3,1,1,1,2,1,1,1,1,1,1,1,1,12)


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

end FlvPic
