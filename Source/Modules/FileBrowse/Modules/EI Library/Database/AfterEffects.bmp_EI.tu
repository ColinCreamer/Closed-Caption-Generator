%--------Embedded Image File (EI) 2 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 43 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   AfterEffects.bmp_EI.tu
%File Num:       2 of 81
%Original Image: AfterEffects.bmp
%Detentions:     44 by 45
%Mega-Pixels:    0.0001



unit

module AfterEffectsPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 44
    var height : int := 45
    var pixels : int := 1980


%RGB Color Channels
var R : array 1 .. 1411 of nat1 := init(255,122,121,121,121,120,120,119,119,118,118,117,116,116,115,114,114,113,112,112,111,110,109,108,107,107,106,105,104,103,102,101,255,124,124,123,123,122,122,121,121,120,119,119,118,117,116,116,115,114,113,112,111,111,110,109,108,107,106,105,104,103,255,127,127,126,126,125,125,124,124,123,122,122,121,121,120,119,119,118,117,116,116,115,114,113,112,111,110,109,108,107,107,105,255,130,130,129,129,127,127,126,125,124,124,123,122,122,121,120,120,119,118,117,116,115,114,114,113,112,111,110,109,108,255,133,133,132,132,131,131,131,130,130,129,127,126,126,125,124,124,123,122,121,120,119,119,118,117,116,115,114,113,112,111,110,255,135,135,134,134,133,133,132,132,131,130,130,129,127,127,126,125,124,124,123,122,121,120,119,118,117,116,115,114,113,112,255,138,137,152,154,138,135,134,133,133,132,136,153,152,133,127,126,151,151,151,150,150,150,149,149,124,116,115,114,255,140,140,139,62,81,78,120,137,137,136,135,135,118,78,85,62,106,130,129,68,89,74,106,119,118,116,255,142,142,142,74,75,84,102,140,139,138,137,103,84,80,61,133,133,132,68,89,84,74,68,60,105,121,120,119,255,145,144,144,103,65,84,88,143,141,140,142,85,87,73,76,136,135,134,68,89,74,44,28,26,67,123,122,121,255,147,147,146,137,53,76,77,148,157,156,141,79,81,62,98,138,137,136,65,85,65,133,131,131,130,127,126,125,124,123,255,149,149,149,148,69,67,78,77,75,74,75,78,79,73,56,141,140,140,139,62,80,66,135,134,133,132,131,129,127,126,125,255,151,151,151,150,91,58,72,67,55,50,56,68,74,63,66,143,143,142,141,58,76,72,155,154,154,154,148,131,130,129,127,255,154,153,153,133,47,66,59,60,51,60,59,69,55,95,145,145,144,143,55,71,68,62,61,57,63,134,132,131,130,255,156,155,155,155,57,58,55,145,152,144,56,62,43,139,148,147,146,145,52,66,58,39,29,27,48,136,134,133,132,255,158,158,157,157,157,78,49,55,113,154,105,56,54,59,151,150,149,148,147,48,62,49,108,106,105,104,112,138,136,135,134,255,160,160,159,130,41,52,86,156,80,54,45,92,153,152,151,150,149,45,58,49,145,144,143,142,141,140,138,137,136,255,163,162,162,161,161,38,47,62,159,56,49,36,137,155,154,153,152,151,41,54,51,158,157,157,156,141,140,139,138,255,165,164,164,164,163,71,40,43,143,43,50,158,157,156,155,154,153,34,43,44,34,143,142,141,140,255,167,167,166,166,166,105,32,41,85,42,35,76,160,159,158,157,156,155,19,24,25,19,145,144,142,141,255,169,169,168,168,157,27,37,39,37,27,133,162,161,160,159,158,157,78,78,77,76,76,75,74,147,145,144,143,255,171,171,170,170,169,54,28,30,28,36,165,164,163,162,161,160,159,158,157,155,154,153,152,151,149,148,147,146,144,255,173,174,173,173,172,48,11,12,11,75,167,166,165,164,163,162,161,160,158,157,156,155,153,152,151,150,148,147,146,255,175,176,175,175,175,174,173,173,172,171,170,169,168,167,166,165,164,162,161,160,159,158,156,155,154,153,151,150,149,147,255,178,177,176,176,175,174,173,172,171,170,169,168,167,165,164,163,162,160,159,158,156,155,154,153,151,150,149,255,180,180,180,179,179,178,177,176,175,174,173,172,171,169,168,167,166,164,163,162,161,159,158,156,155,154,153,151,150,255,181,182,182,182,181,181,180,179,178,177,176,175,174,172,171,170,169,167,166,165,163,162,161,159,158,156,155,154,152,151,255,174,175,175,176,175,175,174,173,172,171,170,169,168,166,165,164,162,161,163,165,166,165,163,162,160,159,158,156,154,152,151,255,156,157,156,156,155,153,152,151,150,149,148,147,145,151,163,166,165,163,162,159,157,156,153,152,151,150,48,47,46,45,45,44,43,42,41,41,40,39,38,37,160,166,164,160,158,154,151,149,147,146,145,146,52,63,64,65,65,66,65,65,64,63,62,62,62,61,60,59,58,57,57,37,158,164,161,155,150,146,142,139,138,138,141,56,69,69,70,71,72,71,70,69,69,68,67,66,65,65,63,62,62,61,41,157,161,154,147,139,134,127,124,124,124,127,134,61,75,76,77,209,220,77,98,253,166,77,253,75,164,253,73,72,71,69,69,68,67,65,65,63,44,157,157,146,135,124,116,110,107,107,110,116,155,63,83,84,85,86,86,171,253,129,160,253,127,85,253,221,126,125,80,166,253,77,76,75,73,73,72,69,69,68,66,47,153,151,138,123,110,101,94,91,94,100,120,210,71,93,95,94,96,97,137,253,224,234,253,94,253,213,91,89,88,170,253,124,80,77,76,75,73,72,70,69,50,151,146,130,113,99,88,82,81,86,139,213,227,83,103,105,106,107,253,162,207,225,104,103,253,243,214,185,94,174,253,148,82,78,77,76,74,73,71,53,148,142,123,133,131,145,163,193,223,218,215,255,94,112,114,115,116,219,193,227,192,112,110,253,235,181,160,101,177,253,94,203,253,86,84,80,77,76,75,73,55,146,139,120,213,251,244,229,215,206,255,105,121,122,124,126,189,221,253,171,119,117,253,218,110,108,106,179,253,98,185,253,110,86,82,79,77,76,74,57,145,138,117,213,251,241,226,211,199,255,114,130,133,134,135,134,163,253,142,123,121,253,244,218,191,108,180,253,214,253,213,90,86,84,80,77,76,74,60,142,136,116,213,238,223,209,191,255,123,138,140,142,143,142,141,140,137,194,193,130,125,123,188,186,185,166,108,124,170,177,136,94,89,86,84,79,77,76,73,62,142,136,116,201,220,205,188,255,125,141,143,145,147,144,142,140,137,134,130,127,124,122,118,116,113,110,107,103,101,98,94,91,88,84,82,77,76,74,73,62,144,135,118,217,203,184,255,119,120,123,124,125,126,125,124,122,120,118,116,114,111,109,106,103,100,98,95,92,89,86,83,81,79,75,72,69,66,62,147,136,151,199,184,255,166,166,167,167,168,168,169,169,169,169,169,168,168,167,167,163,157,149,140,172,182,255,163,164,165,165,166,166,167,167,167,167,166,166,165,165,161,158,151,159,189,255,161,162,162,163,163,164,164,164,165,164,164,164,163,161,158,173,212,255)
var G : array 1 .. 1411 of nat1 := init(255,131,131,130,130,129,129,127,126,126,125,125,124,123,123,122,121,120,120,119,118,117,116,115,114,113,112,111,110,109,108,107,255,134,133,133,132,132,131,130,130,129,127,127,126,125,124,123,122,121,120,120,119,118,117,116,115,114,113,112,110,109,255,137,136,136,135,135,134,134,133,132,132,131,131,130,129,127,127,126,125,124,123,122,121,120,119,118,117,116,115,114,113,112,255,139,138,138,138,137,136,136,135,134,133,133,132,131,130,129,129,127,126,125,124,123,122,121,120,119,118,116,115,114,255,142,142,142,141,141,140,140,139,139,138,137,136,135,135,134,133,132,131,130,129,127,126,126,125,124,122,121,120,119,118,117,255,145,144,144,143,143,142,141,141,140,139,139,138,137,137,136,135,134,133,132,131,130,129,127,126,125,124,123,121,120,119,255,148,147,163,165,149,144,143,143,142,142,145,163,163,143,137,136,162,161,161,161,160,160,160,159,132,124,123,122,255,150,150,149,62,81,78,130,147,146,146,145,144,126,78,85,62,114,139,138,68,89,74,113,126,125,124,255,152,152,151,77,75,84,109,150,149,148,147,109,84,80,62,143,142,141,68,89,84,74,68,60,112,130,129,126,255,155,154,154,109,65,84,91,153,151,150,152,88,87,73,81,145,144,143,68,89,74,44,28,26,71,132,131,130,255,157,156,156,146,53,76,77,158,167,167,151,79,81,62,105,148,147,146,65,85,65,142,141,140,138,137,136,135,133,132,255,159,159,158,158,72,67,78,77,75,74,75,78,79,73,56,151,150,150,149,62,80,66,144,143,142,141,140,138,137,136,134,255,161,161,160,160,96,58,72,67,55,50,56,68,74,63,69,153,153,152,151,58,76,72,165,165,164,164,158,141,139,138,137,255,163,163,162,142,47,66,59,62,53,62,59,69,55,102,155,155,154,153,55,71,68,62,61,57,65,143,142,140,139,255,165,165,165,164,59,58,55,154,162,154,56,62,43,148,157,157,156,155,52,66,58,39,29,27,50,145,144,143,141,255,168,167,167,167,166,82,49,55,120,164,112,56,54,62,160,160,159,158,157,48,62,49,115,113,113,112,120,148,146,145,143,255,170,169,169,137,41,52,91,166,84,54,45,97,162,162,161,160,159,45,58,49,155,154,153,152,151,150,148,147,146,255,172,172,171,171,170,39,47,64,168,58,49,36,145,165,164,163,162,161,41,54,51,168,168,167,167,151,150,149,148,255,174,174,174,173,173,74,40,43,152,43,52,167,167,166,165,164,163,34,43,44,34,153,152,151,150,255,176,176,176,175,175,111,32,41,88,42,35,80,169,169,168,167,166,165,19,24,25,19,155,154,152,151,255,178,178,178,177,166,27,37,39,37,27,140,172,171,170,169,168,167,83,82,82,81,81,80,79,156,155,154,153,255,181,180,180,179,179,57,28,30,28,37,174,174,173,172,171,169,168,167,166,165,164,163,162,160,159,158,157,156,154,255,183,183,183,182,181,50,11,12,11,79,176,175,175,174,172,171,170,169,168,167,166,164,163,162,161,159,158,157,156,255,185,185,185,184,184,183,183,182,181,180,179,178,177,176,175,174,173,172,171,170,168,167,166,165,163,162,161,160,158,157,255,187,186,185,185,184,183,182,181,180,179,178,177,176,175,174,172,171,170,169,167,166,165,164,162,161,160,158,255,189,189,189,188,188,187,186,185,184,183,182,181,180,179,178,176,175,174,173,171,170,169,168,166,165,164,162,161,160,255,190,190,190,190,190,190,189,188,187,186,185,184,183,182,180,179,178,177,175,174,173,171,170,169,168,166,165,163,162,161,255,182,183,183,184,183,183,182,181,180,179,178,177,176,175,174,173,172,170,172,175,175,174,173,171,170,169,167,166,164,162,161,255,164,165,164,163,162,162,160,159,158,157,156,155,154,159,172,176,174,173,171,168,167,165,163,161,160,160,49,49,48,47,46,45,44,44,43,42,41,40,39,39,169,176,173,169,166,163,161,158,157,155,155,156,54,65,66,67,68,68,68,67,66,65,64,63,63,62,62,61,60,59,59,39,168,173,169,164,158,155,150,147,146,147,149,58,71,72,73,73,74,73,73,72,71,70,69,68,68,67,65,63,63,62,42,166,170,163,154,147,141,136,133,132,133,136,142,62,78,78,79,210,220,80,101,253,167,79,253,78,166,253,75,74,73,72,71,70,69,68,67,65,45,164,166,154,143,132,123,116,113,114,117,124,160,65,85,87,88,88,89,172,253,131,161,253,131,88,253,222,127,126,83,168,253,79,78,78,76,75,74,72,71,70,68,49,161,159,145,130,117,106,100,96,100,107,124,210,74,95,97,97,98,99,139,253,225,234,253,97,253,213,94,92,90,172,253,127,83,80,78,78,76,74,73,72,52,158,154,137,119,105,93,87,86,91,143,213,227,85,106,107,108,109,253,164,208,226,107,106,253,244,215,186,97,175,253,150,84,81,80,78,77,75,73,54,157,150,131,138,135,147,166,194,223,218,215,255,96,114,117,117,119,219,194,227,192,114,112,253,235,182,162,103,178,253,96,204,253,89,86,83,80,78,78,75,57,154,147,126,215,251,244,229,215,206,255,107,124,125,127,129,190,222,253,172,122,119,253,218,112,110,108,180,253,100,186,253,111,89,85,81,80,78,77,59,154,146,124,214,251,241,226,211,199,255,117,133,135,136,137,136,164,253,145,126,124,253,245,219,192,110,181,253,215,253,214,93,89,86,83,80,78,77,62,151,144,123,214,238,223,209,192,255,125,140,143,145,146,145,144,143,139,195,194,133,129,126,189,187,186,167,111,126,171,178,138,96,92,89,86,82,80,78,76,63,150,143,123,203,220,205,189,255,127,143,146,148,149,147,145,143,139,136,133,131,127,125,120,119,115,112,109,106,103,100,96,94,90,87,84,80,78,77,75,63,151,143,125,217,203,185,255,121,122,125,126,127,129,127,126,124,122,120,118,116,113,111,109,106,102,100,98,95,92,89,85,83,81,77,74,71,68,65,155,144,156,199,184,255,175,176,176,177,177,178,178,178,179,178,178,178,177,177,176,172,167,158,148,175,182,255,173,173,174,175,175,176,176,177,176,176,176,175,175,174,171,166,160,165,190,255,171,171,172,172,173,173,174,174,174,174,174,173,172,171,166,179,213,255)
var B : array 1 .. 1411 of nat1 := init(255,155,155,155,154,154,153,152,152,151,151,150,150,149,148,148,147,146,145,145,144,143,142,141,140,139,138,138,137,136,134,134,255,158,157,157,156,156,155,155,154,153,153,152,151,150,149,149,148,147,146,145,145,144,143,142,141,140,139,138,137,136,255,161,160,160,159,159,158,158,157,157,156,155,155,154,153,153,152,151,151,150,149,148,147,146,145,144,143,142,141,140,139,138,255,163,162,162,161,161,160,160,159,158,157,157,156,155,155,154,153,152,151,150,149,149,148,147,146,145,144,142,142,140,255,166,165,165,165,164,164,163,163,162,162,161,160,159,159,158,157,156,155,155,154,153,152,151,150,149,148,147,146,145,144,143,255,168,168,167,167,166,165,165,164,164,163,162,162,161,160,159,159,158,157,156,155,154,153,152,151,151,149,148,147,146,145,255,171,170,186,188,172,168,167,166,166,165,168,186,186,166,160,159,185,185,184,184,184,183,183,183,157,150,149,147,255,173,172,172,66,81,78,148,170,170,169,168,168,146,78,85,62,134,163,162,68,89,74,133,152,151,150,255,175,174,174,86,75,84,121,172,172,171,170,122,84,80,64,166,165,164,68,89,84,74,68,60,131,154,153,152,255,177,177,176,125,65,84,97,175,174,173,174,92,87,73,91,169,168,167,68,89,74,44,28,26,83,156,155,154,255,179,178,178,167,53,76,77,180,190,190,170,79,81,62,121,171,170,169,65,85,65,165,164,163,162,161,160,159,157,156,255,181,180,180,180,79,67,78,77,75,74,75,78,79,73,58,174,173,172,172,62,80,66,168,166,165,164,163,162,161,160,158,255,183,182,182,182,109,58,72,67,55,50,56,68,74,63,77,176,175,174,174,58,76,72,188,188,188,187,181,164,163,162,161,255,184,184,183,160,47,66,59,67,58,67,59,69,55,116,178,177,176,175,55,71,68,62,61,57,71,166,165,164,163,255,186,186,185,185,62,58,55,174,183,174,56,62,43,169,179,179,178,177,52,66,58,39,29,27,55,168,167,166,165,255,188,188,188,187,187,91,49,55,135,185,125,56,54,66,182,181,180,180,179,48,62,49,134,132,131,130,140,171,169,168,167,255,190,190,189,154,41,52,100,187,92,54,45,109,184,183,182,181,181,45,58,49,177,176,175,174,174,172,171,170,169,255,191,191,190,190,190,40,47,68,190,60,49,36,163,185,185,184,183,182,41,54,51,190,190,190,190,174,173,172,171,255,193,193,192,192,191,82,40,43,171,43,55,188,187,187,186,185,184,34,43,44,34,176,174,174,172,255,195,194,194,194,193,123,32,41,97,42,35,90,190,189,188,187,187,186,19,24,25,19,177,176,175,174,255,197,196,196,195,184,27,37,39,37,27,156,191,190,190,189,188,187,93,93,92,92,91,91,90,178,177,176,175,255,198,198,198,197,197,62,28,30,28,40,193,192,191,191,190,190,189,188,187,186,185,184,183,182,181,180,179,178,177,255,200,200,200,200,199,55,11,12,11,88,195,194,193,192,191,190,190,189,188,187,186,185,184,183,182,181,180,179,178,255,202,202,202,202,201,201,200,199,199,198,197,197,196,195,194,193,192,191,190,190,189,188,187,186,185,183,182,181,180,179,255,204,203,203,202,201,201,200,199,198,197,196,195,194,193,192,191,190,190,189,188,187,186,185,183,182,181,180,255,205,206,205,205,204,204,203,202,202,201,200,199,198,197,196,195,194,193,191,190,190,189,188,187,186,185,183,182,181,255,207,207,208,207,207,206,206,205,204,203,202,201,200,199,198,197,196,195,194,193,192,190,190,189,188,187,186,185,183,182,255,197,198,199,199,199,198,197,196,196,195,194,193,193,192,191,190,189,188,190,193,194,193,191,190,190,189,188,187,184,183,182,255,179,179,179,178,177,176,175,174,173,173,172,171,169,175,190,194,193,190,190,188,187,185,183,182,181,180,70,69,68,67,65,64,63,62,62,60,59,58,57,56,187,194,191,188,185,182,180,176,175,174,174,176,76,94,95,96,98,99,98,96,95,94,93,92,90,89,88,87,86,85,83,56,186,192,188,182,176,172,168,165,164,166,168,82,102,104,105,106,107,106,105,104,102,101,100,99,98,96,94,92,90,89,60,184,188,181,172,163,157,152,148,147,149,153,160,89,112,113,114,219,227,116,134,253,185,114,253,112,183,253,108,107,106,104,102,101,100,98,96,94,64,181,182,171,158,147,138,131,126,129,132,140,171,94,120,123,124,123,125,189,253,157,181,253,158,124,253,228,154,154,119,186,253,114,113,112,110,108,107,104,102,101,99,69,177,176,161,144,130,119,111,108,112,119,140,211,104,131,133,134,134,135,165,253,231,239,253,134,253,222,131,129,125,190,253,155,119,116,113,112,110,107,105,104,74,176,171,153,133,116,104,97,96,102,151,214,227,116,141,143,144,145,253,185,219,232,142,141,253,246,224,201,134,192,253,172,119,117,116,113,111,108,106,77,173,166,145,148,143,153,170,197,224,218,215,255,127,150,152,153,154,228,209,234,208,150,148,253,239,198,184,139,194,253,132,215,253,125,121,119,116,113,112,108,81,170,162,141,218,251,244,229,215,206,255,139,159,160,162,162,207,230,253,193,157,155,253,227,148,146,144,196,253,136,201,253,143,125,121,116,116,113,111,85,170,161,139,217,251,241,226,211,199,255,150,167,168,170,170,170,189,253,174,161,159,253,247,227,207,146,197,253,224,253,222,130,125,121,119,116,113,111,88,167,159,137,217,238,223,209,193,255,157,173,175,177,178,177,176,175,172,211,210,167,163,161,205,204,202,189,148,158,190,195,164,132,129,125,121,118,116,113,110,90,166,158,137,206,220,205,190,255,159,176,178,180,180,179,177,175,172,170,167,165,162,160,156,154,151,148,145,141,139,136,132,131,125,123,119,116,113,111,108,92,168,159,140,217,203,186,255,153,154,157,158,159,160,159,158,156,154,152,150,148,145,143,140,137,134,130,129,125,122,119,114,112,110,106,103,100,97,93,173,160,166,199,185,255,193,194,195,195,195,196,196,197,197,197,196,196,195,195,194,191,185,176,165,181,184,255,191,192,193,193,194,194,195,195,195,194,194,194,193,193,190,185,178,178,192,255,190,190,191,191,192,192,192,193,193,193,192,192,191,190,186,191,216,255)
%Compression Index
var N : array 1 .. 1411 of nat1 := init(11,2,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,2,2,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,3,1,1,1,2,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,2,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,2,2,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,2,3,1,2,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,1,1,1,11,3,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,11,1,1,3,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,11,2,1,2,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,2,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,11,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,11,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,3,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,11,3,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,2,4,1,1,1,1,1,11,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,1,11,4,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,11,4,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,6,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,2,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,8,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,5,2,2,1,3,1,2,1,2,1,1,1,7,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,4,3,4,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,2,1,3,6,2,1,3,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,2,1,1,1,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,3,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,18,1,1,1,1,1,1,2,1,3,1,2,1,1,1,1,1,1,1,1,1,1,19,1,1,1,1,2,1,2,3,2,1,1,1,1,1,1,1,1,1,1,20,1,1,1,1,1,1,1,1,6,1,1,2,1,1,1,1,1,10)


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

end AfterEffectsPic