%--------Embedded Image File (EI) 69 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 2:00AM
%Compile Time: 38 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   torrent.bmp_EI.tu
%File Num:       69 of 81
%Original Image: torrent.bmp
%Detentions:     37 by 46
%Mega-Pixels:    0.0001



unit

module TorrentPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 37
    var height : int := 46
    var pixels : int := 1702


%RGB Color Channels
var R : array 1 .. 1326 of nat1 := init(237,236,237,235,237,236,237,235,237,234,237,236,237,235,233,230,229,227,228,229,231,233,234,237,234,234,237,235,235,234,229,222,216,211,207,207,208,211,215,220,225,230,233,234,233,233,233,237,235,233,226,207,189,174,164,158,164,172,183,193,200,205,211,217,224,230,232,233,232,232,235,233,221,190,156,129,108,97,91,88,91,97,108,127,155,182,199,206,213,220,227,231,233,234,234,234,230,193,149,110,94,96,76,74,72,157,129,72,73,76,80,88,109,147,186,203,211,219,233,230,231,233,234,233,223,168,125,108,86,82,96,71,60,162,222,121,60,63,67,71,77,86,116,167,202,210,233,225,230,233,233,233,233,216,155,115,103,98,92,59,65,52,159,224,114,50,54,59,65,71,79,109,157,203,211,220,226,229,229,233,223,155,111,100,95,90,73,47,42,157,225,226,225,109,41,46,53,60,68,78,105,157,207,214,221,227,233,228,232,232,229,164,109,99,93,87,82,73,44,154,227,227,227,226,104,34,40,48,63,74,79,106,173,209,217,223,227,227,231,231,231,195,107,97,92,85,79,73,68,167,228,228,229,228,228,228,100,29,45,85,76,79,84,116,199,211,219,224,226,231,230,230,223,130,88,92,84,77,70,74,196,229,229,230,230,230,230,230,229,229,98,42,78,59,92,91,97,154,209,215,222,224,230,229,188,93,89,85,77,69,57,36,72,116,174,215,232,232,232,231,189,144,114,44,19,48,40,63,91,85,104,198,212,219,223,229,228,136,79,86,79,70,48,9,4,7,11,14,174,233,233,233,233,233,233,74,13,3,3,3,17,62,43,71,69,96,165,210,217,221,228,227,217,99,87,82,72,49,6,6,10,12,17,19,176,235,235,235,235,235,234,81,28,20,16,14,6,12,33,52,79,74,132,209,215,219,227,226,190,94,88,77,58,8,5,10,13,17,21,26,178,236,237,236,236,86,35,32,29,23,16,6,6,44,69,65,89,209,213,218,225,168,95,84,70,22,4,9,13,17,21,26,30,179,238,238,237,90,40,38,35,30,24,15,5,27,52,60,77,209,212,217,224,224,160,92,80,52,3,7,12,16,17,24,29,32,180,239,240,240,239,239,92,43,42,39,35,30,23,12,4,36,56,73,178,211,215,223,156,90,75,27,4,8,12,13,18,29,30,33,181,241,241,240,94,45,45,42,39,34,28,18,5,23,53,71,177,211,214,222,221,153,88,71,11,5,25,39,40,43,43,43,47,186,243,243,243,104,60,60,58,55,51,44,25,5,12,51,69,201,211,213,220,161,82,66,5,6,54,52,51,50,45,46,49,187,245,245,245,244,108,63,63,62,60,56,51,32,5,7,50,69,208,210,211,219,185,75,62,3,4,66,65,63,61,59,56,54,188,246,246,247,246,246,110,66,66,66,64,60,55,39,13,9,50,95,208,209,210,217,217,74,51,4,5,81,78,74,72,69,66,62,204,248,248,248,247,124,69,69,69,67,64,58,41,5,11,52,130,207,208,216,216,215,119,56,8,5,86,93,88,94,191,225,248,249,249,249,250,249,249,248,246,202,159,70,66,61,37,6,16,57,172,206,206,214,214,179,63,20,1,73,110,104,99,149,246,249,250,250,251,251,251,250,249,247,215,98,75,72,67,29,5,27,79,205,204,213,212,212,104,40,1,26,127,122,117,112,158,247,251,252,252,253,252,252,251,250,220,100,89,87,84,66,15,3,45,151,203,202,211,211,211,210,184,58,15,2,96,141,137,132,127,171,249,253,253,254,253,252,228,119,106,104,102,98,29,2,21,92,202,201,201,200,209,209,208,137,44,4,11,144,154,156,161,164,197,251,254,255,253,237,163,147,137,125,118,73,5,9,55,183,200,199,199,198,208,207,206,114,35,3,32,160,179,189,197,200,220,252,254,244,197,182,169,159,154,95,12,7,38,162,198,197,197,197,196,206,205,204,111,35,5,42,168,204,214,221,227,238,252,251,229,218,208,196,185,112,26,10,44,151,196,196,196,195,195,195,194,204,203,202,127,46,35,52,131,209,229,237,244,250,249,242,234,224,179,100,50,36,58,167,195,194,194,194,193,193,192,192,202,201,200,172,90,62,73,95,140,188,211,226,225,201,176,131,91,74,72,118,184,193,192,192,191,191,190,190,200,199,198,198,197,197,197,162,118,87,93,106,113,117,109,101,94,107,141,183,191,191,190,190,190,189,189,188,188,198,198,197,197,197,196,196,196,195,195,195,195,194,194,170,150,139,143,142,139,158,175,190,190,190,189,189,188,188,187,187,186,186,187,195,196,196,195,195,195,194,194,194,193,193,193,192,192,191,191,192,191,191,192,189,189,190,188,188,187,190,199,198,203,208,206,204,202,204,168,194,194,193,193,193,192,192,192,191,191,190,190,189,189,188,188,188,187,187,186,186,185,185,197,234,232,230,227,224,220,216,212,168,255,191,192,192,191,191,190,190,189,190,190,189,190,189,193,194,197,189,190,185,189,186,186,185,183,183,195,233,230,228,224,221,217,212,168,255,189,190,189,189,191,136,190,138,115,144,155,170,148,172,176,94,106,151,172,147,170,123,143,181,181,179,192,231,228,225,221,217,213,169,255,186,187,187,190,116,189,116,187,107,143,167,142,172,143,121,150,130,163,136,172,112,185,179,178,191,228,225,222,218,213,169,255,184,185,185,185,189,116,188,113,137,120,141,120,124,100,130,115,101,132,100,101,148,99,160,177,176,175,188,226,222,218,214,170,255,182,183,183,171,140,106,152,177,160,181,171,165,165,160,181,165,171,172,167,166,173,104,166,175,173,186,222,219,214,171,255,180,181,180,175,159,159,164,178,178,177,177,179,178,177,175,175,176,174,175,173,175,174,173,172,171,197,219,215,171,255,178,178,178,177,178,178,176,176,175,174,174,173,172,172,171,195,215,172,255,176,175,174,174,173,172,172,171,172,202,172,255,173,172,171,172,173,173,167,255)
var G : array 1 .. 1326 of nat1 := init(237,236,237,236,237,236,237,236,237,234,237,236,237,236,235,235,234,234,234,234,235,235,235,237,235,234,237,236,235,235,234,233,232,231,230,230,230,231,232,232,233,234,234,234,234,233,233,237,235,233,234,232,228,224,220,218,220,223,226,228,229,229,231,232,233,233,233,233,233,232,235,233,234,228,217,207,199,194,191,190,191,194,199,207,217,225,228,229,230,232,233,233,233,235,234,234,234,228,215,200,193,193,181,178,176,203,194,176,178,181,185,190,200,214,225,228,229,231,233,232,231,233,234,233,233,221,207,199,187,182,189,172,165,202,224,187,164,167,171,176,182,189,202,220,227,228,233,231,231,233,234,233,233,232,217,203,196,192,186,164,165,156,199,226,180,154,158,163,169,176,184,200,216,227,228,229,230,230,229,233,232,216,201,194,189,184,170,151,145,196,227,227,227,174,145,150,157,164,172,182,198,215,226,227,229,229,233,228,232,232,232,218,200,193,187,181,176,167,145,194,228,229,228,228,169,138,144,152,165,175,182,198,218,226,227,228,228,227,232,231,231,225,199,192,186,179,173,167,162,203,229,230,230,230,229,229,165,132,146,178,173,178,185,203,223,225,226,227,226,231,231,230,229,207,189,187,179,172,165,163,214,230,231,231,231,232,231,231,231,230,163,141,171,159,184,186,193,212,224,225,226,225,230,230,222,192,186,180,172,164,156,152,170,187,208,225,233,233,233,233,214,187,172,136,127,147,142,161,184,184,197,221,223,224,224,229,229,208,184,182,174,165,154,145,144,141,145,145,206,234,234,235,234,234,234,172,136,115,117,136,155,162,145,168,171,192,212,222,223,222,228,228,226,195,185,178,168,156,143,143,143,140,144,145,207,236,236,236,236,236,235,172,152,141,144,153,154,155,138,153,175,177,204,221,221,221,227,227,219,192,184,173,160,145,142,142,139,143,143,144,207,237,238,237,237,172,151,152,153,153,153,146,122,146,167,169,188,220,220,220,226,213,191,180,167,151,141,141,141,141,141,142,142,207,239,239,238,172,150,151,152,153,153,154,141,136,153,164,181,219,218,218,225,224,209,189,176,161,144,140,139,140,136,140,140,140,207,240,241,240,240,240,171,150,151,151,153,153,154,154,139,142,160,178,210,217,217,223,207,187,173,155,140,137,135,125,127,139,138,139,207,241,242,241,170,148,150,151,152,153,153,154,138,136,157,175,209,215,215,222,222,205,185,171,151,138,137,138,145,147,145,142,144,210,243,244,243,176,154,156,157,158,159,159,155,127,131,155,174,213,214,214,221,207,182,169,148,136,152,150,152,148,142,142,144,210,245,246,245,245,177,155,156,158,159,160,161,147,124,130,154,174,213,212,212,219,211,178,168,147,126,157,160,157,153,150,148,146,211,247,247,247,247,246,177,156,157,158,160,161,161,156,149,144,155,180,211,211,210,218,218,179,159,146,130,166,166,162,158,155,152,149,221,248,249,248,248,184,157,159,160,161,162,162,160,122,148,157,189,209,209,217,216,216,191,162,144,134,170,173,168,168,217,236,248,249,249,250,250,250,249,248,247,224,203,162,163,164,158,131,143,161,199,208,207,215,215,206,168,144,121,162,180,176,171,194,246,249,250,251,251,252,251,250,249,248,231,174,165,166,167,155,137,143,171,206,205,214,213,213,183,153,127,135,189,183,182,177,198,247,251,252,253,253,252,252,251,250,234,173,169,171,173,168,147,127,153,191,204,203,212,212,211,211,204,164,139,120,170,193,192,187,184,205,249,253,254,254,253,252,239,183,177,178,179,181,139,121,138,171,203,202,202,202,210,209,209,189,154,127,121,194,200,201,202,203,220,251,254,255,254,245,205,197,193,189,189,171,129,138,155,196,201,201,200,200,209,208,207,180,146,122,138,203,214,219,222,224,233,252,254,248,223,214,207,203,205,181,148,145,147,189,199,199,198,198,198,207,206,205,177,144,122,145,210,228,232,236,239,244,253,252,240,234,229,222,218,185,154,146,145,184,198,197,197,197,196,196,196,205,204,203,180,152,145,153,192,231,241,245,249,252,252,248,244,238,214,171,152,152,150,188,196,196,195,195,195,194,194,193,203,202,201,192,166,155,162,175,194,219,231,239,239,226,212,187,166,157,158,170,192,194,194,193,193,192,192,191,201,200,200,199,199,198,198,187,175,165,171,178,177,178,174,171,169,173,180,190,193,192,192,191,191,191,190,190,189,199,199,199,198,198,198,197,197,197,196,196,196,195,196,188,183,179,182,182,180,185,187,192,191,191,191,190,190,189,189,188,188,187,188,197,197,197,197,196,196,196,195,195,195,194,194,194,193,194,193,193,192,192,192,191,190,190,190,189,189,192,200,199,204,208,207,205,203,205,168,195,195,195,194,194,194,193,193,193,192,192,191,191,190,190,190,189,189,188,188,187,187,187,199,234,233,230,228,225,221,217,213,169,255,192,193,193,193,193,192,191,191,191,190,191,192,191,194,196,195,191,191,188,189,188,186,185,185,184,197,233,231,228,225,221,218,213,169,255,190,191,191,190,191,136,191,139,117,144,156,173,148,174,176,95,107,149,172,147,172,123,144,183,182,182,194,231,228,225,222,218,214,170,255,188,189,188,191,116,191,115,189,109,144,169,142,173,144,124,152,126,166,138,174,112,188,183,180,192,229,226,222,218,214,171,255,185,187,186,187,191,117,189,113,138,120,143,121,125,100,132,116,102,132,103,102,149,95,161,180,178,176,190,226,223,219,215,171,255,184,185,185,174,141,105,153,178,162,181,172,166,167,160,183,167,174,175,167,167,175,104,170,176,175,187,223,219,215,172,255,181,182,182,177,160,161,165,180,179,179,180,178,180,177,179,177,176,176,175,175,177,176,175,173,173,198,220,216,172,255,180,180,180,179,180,178,178,177,177,176,175,175,174,173,173,196,216,172,255,178,177,176,175,175,174,173,173,174,203,172,255,175,174,173,174,175,175,168,255)
var B : array 1 .. 1326 of nat1 := init(238,238,238,237,238,238,238,237,238,236,238,238,238,237,237,237,238,238,237,237,237,236,236,238,236,235,238,237,237,237,237,239,240,241,241,242,241,240,239,238,237,236,235,235,235,235,234,238,237,234,240,248,251,255,255,255,255,253,251,247,242,241,240,238,237,235,234,234,234,234,237,234,243,252,255,255,255,255,255,255,255,255,255,255,255,249,242,240,238,237,235,234,234,236,236,235,238,247,242,255,250,238,255,255,255,255,255,255,255,255,255,255,255,255,246,239,238,236,234,233,233,234,236,234,240,244,231,229,245,245,229,249,255,255,255,255,255,255,255,255,255,255,251,241,238,237,234,234,233,234,235,235,234,242,246,230,230,230,232,255,247,253,255,255,255,255,255,255,255,255,255,235,244,237,236,234,232,231,230,234,238,249,230,231,231,231,240,255,255,255,255,255,255,255,255,255,255,255,255,253,237,245,234,234,232,231,234,229,234,233,234,252,237,232,232,232,232,235,249,255,255,255,255,255,255,255,255,255,250,248,252,239,241,234,232,231,229,228,233,233,232,244,254,235,233,233,233,233,233,233,243,255,255,255,246,255,255,255,250,228,240,243,246,239,233,232,230,229,227,232,232,232,235,255,247,233,233,234,234,234,234,234,234,251,255,255,255,236,236,255,255,245,229,245,228,234,235,233,231,230,228,226,231,231,243,255,239,234,235,235,235,235,236,236,241,249,254,255,248,233,238,255,255,255,249,241,252,243,229,243,239,231,230,227,225,230,230,252,254,237,235,236,236,236,237,239,237,237,237,238,252,255,254,242,235,234,243,255,254,241,229,231,252,240,250,236,234,228,226,224,229,229,232,255,241,236,236,237,237,238,238,240,238,238,238,238,245,251,240,236,236,235,234,240,238,231,230,229,250,248,238,252,233,226,225,223,228,228,238,244,236,237,237,238,238,239,241,239,239,239,240,239,238,238,237,236,235,234,233,232,231,234,252,249,242,255,253,224,224,222,227,241,237,237,238,238,239,239,240,240,241,241,241,241,240,239,239,237,236,235,234,233,232,231,237,249,250,255,255,221,223,220,226,226,240,237,238,239,239,240,241,241,244,242,242,242,242,241,241,241,241,240,238,236,235,235,233,233,232,230,242,255,255,255,229,221,219,225,240,238,239,239,240,242,244,252,251,243,244,243,245,243,242,242,239,237,236,235,234,233,232,231,241,255,255,255,228,219,217,224,223,239,239,239,241,241,249,253,248,245,246,247,246,247,245,244,244,241,239,238,237,236,235,234,232,247,255,255,255,219,217,216,222,236,244,240,241,243,249,250,247,248,250,249,247,248,247,246,246,245,241,240,239,238,237,236,235,241,249,253,255,255,215,215,214,221,229,252,243,243,248,251,248,248,248,249,249,249,248,248,247,248,247,247,243,241,240,239,238,237,235,237,234,244,255,247,214,213,212,220,219,255,254,245,247,250,249,250,250,250,250,250,250,249,249,248,248,244,241,240,239,238,237,236,234,251,243,255,236,212,211,218,218,218,243,255,249,245,249,250,251,251,251,252,252,251,250,250,250,250,249,248,247,245,242,238,237,237,234,246,249,255,221,209,209,217,216,226,255,255,255,250,251,252,253,253,253,253,252,251,251,252,251,250,249,248,246,241,239,238,238,234,243,255,249,208,207,215,215,214,245,255,255,251,252,254,253,254,254,254,253,253,253,253,253,252,251,250,248,243,241,240,240,238,236,254,255,225,206,205,214,213,213,213,220,255,255,254,254,255,254,254,255,254,255,255,254,255,254,252,251,245,244,243,242,241,248,252,255,242,205,205,204,204,212,211,211,233,255,255,255,255,255,255,255,255,255,255,255,255,255,253,249,248,246,244,243,240,247,247,252,210,203,203,202,202,210,210,209,238,255,255,252,255,255,255,255,255,255,255,255,255,254,254,255,253,247,242,235,239,254,215,201,201,201,200,200,209,208,207,236,254,254,251,254,255,255,255,255,255,255,255,255,255,255,255,253,248,237,239,252,217,200,200,199,199,199,198,198,207,206,205,230,249,248,249,252,254,255,255,255,255,255,255,255,255,255,255,248,242,247,209,198,198,198,197,197,197,196,196,205,204,203,212,238,249,249,250,254,255,255,255,255,255,255,255,254,250,244,226,200,197,196,196,195,195,194,194,203,202,202,201,201,201,200,213,230,246,248,249,254,255,255,252,248,235,218,199,195,195,194,194,193,193,193,192,192,202,201,201,201,200,200,200,199,199,199,198,197,198,196,207,215,222,220,219,220,210,202,193,194,193,193,193,192,192,191,191,190,190,191,199,200,199,199,199,198,198,198,197,197,197,196,196,196,195,194,194,194,192,193,193,193,192,192,192,191,194,202,202,206,210,209,207,205,207,170,198,197,197,197,196,196,196,195,195,195,194,194,192,193,193,192,192,191,191,190,190,190,189,201,236,234,231,229,226,222,219,214,170,255,195,196,195,195,196,194,194,193,194,194,193,194,194,196,200,197,194,194,191,193,192,189,188,187,187,199,234,232,229,226,223,219,215,171,255,193,194,193,193,195,138,194,140,117,146,156,177,151,174,178,94,109,155,172,149,174,123,145,188,185,184,197,232,229,227,223,219,215,172,255,190,191,191,193,117,194,114,191,109,147,170,142,176,145,127,152,129,167,141,173,113,191,184,183,194,230,227,224,220,216,172,255,188,189,189,191,194,117,192,114,139,117,144,121,126,101,131,115,101,133,102,101,150,98,164,181,181,180,192,227,224,220,216,172,255,186,187,188,176,141,106,154,181,164,185,175,169,172,164,183,170,176,177,169,167,177,103,172,180,178,190,224,221,217,172,255,184,185,185,180,163,163,168,184,182,182,181,181,182,180,180,183,179,179,179,178,180,178,177,176,176,200,221,217,173,255,182,183,182,183,183,181,181,180,180,179,178,178,177,176,176,198,218,173,255,180,180,179,178,178,177,176,176,177,205,174,255,178,177,176,177,177,178,169,255)
%Compression Index
var N : array 1 .. 1326 of nat1 := init(15,1,14,1,15,1,13,2,11,1,3,1,12,1,1,1,1,2,1,1,1,1,1,3,1,6,12,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,4,1,1,2,7,1,5,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,4,1,1,2,9,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,2,6,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,2,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,6,1,1,1,1,1,1,1,1,1,1,1,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,1,1,1,1,1,1,1,1,1,1,2,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,2,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,3,2,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,3,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,3,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,3,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,4,2,1,2,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,7,1,1,1,1,1,1,1,1,2,2,1,2,2,1,8,1,1,1,8,2,2,2,1,2,2,1,10,4,1,1,9,3,3,10,6,1,3,1,10)


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

end TorrentPic