%--------Embedded Image File (EI) 21 of 81 -------

%Compiled With: EI Library Generator (RGB Compressed)
%Compiler Version: v1.4.1
%Compiled on Tuesday January 31st, 2012 at 1:59AM
%Compile Time: 44 millaseconds

%Created By: Colin Creamer
%
%----INFO-----
%EI File Name:   Excel.bmp_EI.tu
%File Num:       21 of 81
%Original Image: Excel.bmp
%Detentions:     46 by 45
%Mega-Pixels:    0.0002



unit

module ExcelPic

    import "..\\EI_Engine.tu"
    export Width, Height, Pixels, Render, IsRendered, ID

    var rendered : boolean := false
    var picID : int


    var width : int := 46
    var height : int := 45
    var pixels : int := 2070


%RGB Color Channels
var R : array 1 .. 973 of nat1 := init(255,150,103,97,97,97,90,90,84,77,77,77,70,70,64,64,57,57,57,51,51,51,44,255,150,228,196,189,183,183,176,170,163,156,156,150,143,143,137,130,123,116,110,103,97,97,44,255,150,235,228,228,222,215,209,209,209,202,196,196,97,44,255,150,235,228,228,222,222,215,209,209,209,209,202,196,103,44,255,150,235,228,228,222,215,209,209,202,196,103,44,255,150,241,241,235,228,228,222,215,209,209,209,209,202,196,103,44,255,150,241,241,235,228,228,222,222,215,209,209,209,209,202,202,103,44,255,150,241,241,235,228,123,123,116,110,103,97,209,209,202,110,44,255,150,241,156,150,143,143,137,137,130,150,143,143,137,137,130,130,209,209,209,209,202,110,44,255,156,248,241,156,241,235,137,235,143,235,235,143,116,222,137,222,130,103,215,209,209,209,202,110,44,255,156,248,163,241,137,235,150,241,235,143,116,228,137,228,222,130,103,215,209,209,209,116,44,255,156,250,248,170,248,241,143,241,241,235,150,241,241,143,116,228,137,228,228,137,110,222,215,209,209,209,116,44,255,156,250,248,170,163,156,150,143,143,137,137,130,150,248,241,143,123,228,143,228,137,110,222,215,209,116,44,255,156,250,176,248,248,150,241,150,248,143,123,235,143,235,228,137,110,222,215,209,123,44,255,156,250,176,248,248,156,248,241,150,235,143,241,235,137,116,228,222,222,215,123,44,255,156,250,183,248,248,156,248,241,241,235,143,241,137,116,228,222,222,215,130,44,255,156,250,189,183,183,176,170,163,156,150,143,143,137,137,130,143,143,137,228,228,222,222,215,130,44,255,156,250,189,248,170,250,143,241,241,235,228,130,228,222,222,130,44,255,163,250,196,248,170,250,143,241,130,235,130,228,222,130,44,255,163,250,196,248,250,170,250,150,248,241,130,241,235,130,228,228,222,137,44,255,163,250,235,228,202,196,176,170,150,228,176,170,163,156,156,150,143,143,137,137,130,235,228,228,137,44,255,202,196,176,163,150,116,90,123,150,170,110,228,250,156,250,241,137,241,241,235,130,235,228,228,143,44,31,25,25,18,12,12,25,70,103,137,183,196,250,123,222,250,163,250,137,241,241,130,235,228,143,44,31,250,143,163,189,202,250,241,215,189,176,202,250,123,202,250,170,250,143,248,241,130,235,228,143,44,38,250,137,250,241,235,228,241,176,170,137,196,202,123,116,116,170,250,143,202,189,183,176,170,163,156,156,150,143,143,137,137,130,241,235,150,44,38,250,77,250,163,163,156,183,228,143,143,137,183,228,123,116,116,150,250,150,196,250,176,250,150,250,130,241,241,235,150,44,38,250,31,250,189,163,156,170,248,143,163,170,202,241,209,222,241,250,150,176,250,183,250,156,250,130,241,235,150,44,38,250,18,228,209,235,228,255,241,228,250,163,156,137,123,250,189,176,250,183,250,156,250,137,241,241,235,156,44,38,250,18,183,248,228,215,189,183,103,51,51,202,250,123,123,116,110,250,202,176,196,189,183,183,176,170,163,156,156,150,143,143,137,241,241,156,44,38,250,64,143,241,150,123,123,97,51,116,163,250,156,150,170,250,202,150,250,189,250,170,250,143,248,241,156,44,38,250,123,116,255,183,116,51,51,97,250,241,222,215,183,241,228,137,250,196,250,170,250,143,248,241,163,44,38,250,137,110,255,77,51,64,116,170,248,250,189,123,116,116,222,241,116,250,196,250,176,250,150,248,241,163,44,44,250,143,130,235,255,143,51,64,130,116,116,143,241,189,123,116,116,222,241,130,196,189,183,176,170,163,156,250,248,241,163,44,44,250,156,189,196,90,103,183,241,222,228,241,222,248,241,189,250,248,241,163,44,44,250,189,163,156,241,222,209,189,170,143,170,163,202,250,248,163,44,84,202,228,176,137,143,137,163,176,250,25,250,189,183,183,176,176,170,163,44,176,84,255,209,183,250,25,250,156,116,110,103,90,77,70,57,51,255,110,123,255,235,202,189,250,25,250,156,189,183,176,176,170,44,255,97,84,202,250,25,250,156,228,222,209,202,196,57,255,176,84,44,44,38,38,31,31,250,156,228,222,215,202,64,255,176,250,156,228,228,215,77,255,176,250,156,228,228,90,255,176,250,156,228,97,255,176,250,156,228,110,255,176,170,170,170,163,163,163,156,156,116,255)
var G : array 1 .. 973 of nat1 := init(255,163,123,116,116,110,110,110,103,103,97,97,97,90,90,84,84,84,77,77,77,70,70,255,163,241,202,202,202,196,196,189,189,189,183,183,183,176,176,170,170,163,163,156,156,156,70,255,163,241,241,235,235,228,228,228,222,222,222,215,156,70,255,163,241,241,235,235,228,228,228,228,222,222,222,215,156,70,255,163,241,241,235,235,228,228,222,222,215,156,70,255,170,248,241,241,241,235,235,228,228,228,222,222,222,222,156,70,255,170,248,241,241,241,235,235,228,228,228,228,228,222,222,222,156,70,255,170,248,241,241,241,156,150,150,143,137,130,222,222,222,156,70,255,170,248,183,176,176,170,170,170,163,183,176,176,170,170,170,163,228,228,222,222,222,163,70,255,170,248,248,183,248,241,170,241,183,248,241,176,150,235,170,235,163,137,228,228,228,222,222,163,70,255,170,248,189,248,170,241,183,248,248,176,150,235,170,235,235,163,137,228,228,222,222,163,70,255,170,255,248,196,248,248,170,248,241,241,183,255,248,176,150,235,170,241,235,170,143,235,228,228,228,222,163,70,255,170,255,248,196,189,183,176,176,170,170,170,163,183,255,255,176,156,241,176,241,170,143,235,228,228,163,70,255,170,255,202,255,248,176,248,183,255,176,156,241,176,241,241,170,143,235,228,228,163,70,255,170,255,202,255,248,183,248,248,183,241,176,248,241,170,143,235,235,228,228,170,70,255,176,255,209,255,248,189,248,248,241,241,176,248,170,150,235,235,228,228,170,70,255,176,255,209,209,202,202,196,189,183,176,176,170,170,170,163,176,176,176,241,235,235,228,228,170,70,255,176,255,209,255,196,255,170,248,241,241,241,163,235,235,228,170,70,255,176,255,215,255,196,255,176,248,163,241,163,235,235,176,70,255,176,255,215,255,255,189,255,176,248,248,163,248,241,163,241,235,235,176,70,255,176,255,235,228,202,196,176,170,150,228,202,196,189,189,183,176,176,170,170,170,163,241,241,235,176,70,255,202,196,176,163,150,130,116,150,176,189,137,228,255,183,255,248,170,248,241,241,163,241,241,235,176,70,130,116,116,90,64,70,77,116,143,163,196,209,255,150,222,255,189,255,170,248,241,163,241,241,176,70,130,255,196,196,202,215,255,248,228,215,209,222,255,150,202,255,196,255,170,248,248,163,241,241,183,70,143,255,189,255,248,241,241,248,202,202,183,215,222,170,170,163,202,255,170,202,209,209,202,196,189,189,183,176,176,170,170,170,163,241,241,183,70,143,255,150,255,202,196,196,209,241,189,183,183,209,235,170,170,170,189,255,176,196,255,202,255,176,255,163,248,241,241,183,70,143,255,116,255,215,196,196,202,255,189,196,202,222,248,228,235,248,255,176,176,255,202,255,183,255,163,248,241,183,70,143,255,103,241,228,241,241,255,248,241,255,202,196,176,170,255,202,176,255,209,255,183,255,170,248,241,241,183,70,143,255,103,215,255,241,235,222,215,156,110,116,222,255,176,170,170,163,255,215,176,215,209,209,202,202,196,189,189,183,176,176,170,170,248,241,189,70,150,255,137,189,248,202,189,189,163,110,170,209,255,196,189,202,255,215,150,255,209,255,196,255,170,248,248,189,70,150,255,183,176,255,222,176,116,110,156,255,248,235,228,209,248,235,143,255,215,255,196,255,176,248,248,189,70,150,255,189,176,255,137,110,123,183,215,255,255,215,170,170,163,235,248,130,255,215,255,202,255,176,248,248,189,70,150,255,196,189,241,255,176,110,123,189,189,189,196,248,215,170,170,163,235,248,150,215,209,209,202,196,189,183,255,248,248,189,70,156,255,202,222,209,137,150,202,248,241,241,248,235,255,248,222,255,248,248,189,70,156,255,222,209,202,248,235,228,222,209,189,209,209,228,255,248,189,70,176,228,241,215,189,196,196,209,215,255,116,255,209,209,202,202,196,196,189,70,215,176,255,235,222,255,116,255,170,130,130,123,110,103,90,84,77,255,189,196,255,248,228,222,255,116,255,170,209,202,202,196,196,70,255,183,176,228,255,116,255,170,241,235,228,215,215,77,255,215,176,156,150,150,143,130,130,255,170,241,235,228,222,90,255,189,255,170,241,235,228,97,255,189,255,170,241,235,110,255,189,255,170,241,116,255,189,255,170,241,130,255,189,189,189,183,183,183,176,176,176,130,255)
var B : array 1 .. 973 of nat1 := init(255,183,143,143,137,137,137,130,130,123,123,116,116,116,110,110,110,103,103,103,97,97,97,255,183,255,222,228,228,228,228,228,228,235,235,235,235,235,235,241,241,241,241,241,241,248,97,255,189,255,255,255,255,255,255,248,248,248,248,248,248,97,255,189,255,255,255,255,255,255,255,248,255,248,248,248,241,97,255,189,255,255,255,255,255,248,248,248,248,241,97,255,189,255,255,255,255,255,255,255,255,248,255,248,248,248,241,97,255,189,255,255,255,255,255,255,255,255,255,248,255,248,255,248,241,97,255,189,255,255,255,255,202,202,196,189,183,176,255,248,248,241,97,255,189,255,222,222,215,215,215,209,209,222,222,215,215,209,209,209,255,248,255,248,248,241,97,255,189,255,255,222,255,255,209,255,222,255,255,215,196,255,215,255,209,183,255,255,248,248,248,241,97,255,189,255,228,255,215,255,222,255,255,215,196,255,215,255,255,209,183,255,255,255,248,241,97,255,189,255,255,228,255,255,215,255,255,255,222,255,255,222,196,255,215,255,255,209,189,255,255,255,248,248,241,97,255,189,255,255,228,228,222,222,215,215,215,209,209,222,255,255,222,202,255,215,255,209,189,255,255,255,241,97,255,189,255,235,255,255,222,255,222,255,222,202,255,215,255,255,215,189,255,255,255,241,97,255,196,255,235,255,255,222,255,255,222,255,215,255,255,215,196,255,255,255,255,241,97,255,196,255,235,255,255,222,255,255,255,255,222,255,215,196,255,255,255,255,235,97,255,196,255,241,235,235,235,228,228,222,222,215,215,215,209,209,222,215,215,255,255,255,255,255,235,97,255,196,255,241,255,228,255,215,255,255,255,255,209,255,255,255,235,97,255,196,255,241,255,228,255,215,255,209,255,209,255,255,235,97,255,196,255,241,255,255,228,255,222,255,255,209,255,255,209,255,255,255,235,97,255,196,255,235,228,202,196,176,170,150,228,235,228,228,222,222,222,215,215,215,209,209,255,255,255,235,97,255,202,196,176,163,150,110,110,116,143,163,110,228,255,222,255,255,209,255,255,255,209,255,255,255,235,97,5,5,12,5,5,5,18,64,97,130,176,196,255,116,222,255,228,255,215,255,255,209,255,255,235,97,0,250,137,156,183,202,255,241,215,183,176,202,255,116,202,255,228,255,215,255,255,209,255,255,228,97,0,250,123,250,235,228,228,241,163,156,123,189,196,116,116,110,170,255,137,202,241,235,235,228,228,222,222,222,215,215,215,209,209,255,255,228,97,0,250,57,250,137,137,130,163,228,130,123,123,176,222,116,116,110,150,255,143,196,255,235,255,222,255,209,255,255,255,228,97,0,250,12,250,170,137,130,150,248,130,150,156,196,241,202,222,241,255,143,176,255,235,255,222,255,209,255,255,228,97,0,250,0,222,196,228,228,255,241,228,250,163,150,130,123,255,183,176,255,235,255,222,255,209,255,255,255,228,97,0,250,0,176,248,222,215,189,176,84,12,18,196,250,116,116,110,110,255,202,176,241,241,235,235,235,228,228,222,222,222,215,215,215,255,255,228,97,0,250,44,130,241,150,123,116,84,12,103,156,250,150,150,170,255,202,150,255,241,255,228,255,215,255,255,228,97,0,250,110,103,255,183,103,18,12,77,250,241,222,215,183,241,228,130,255,241,255,228,255,215,255,255,228,97,0,250,123,97,255,44,12,31,110,170,248,250,189,116,116,110,222,241,110,255,241,255,235,255,222,255,255,228,97,0,250,130,116,228,255,116,12,25,123,116,110,137,241,189,116,116,110,222,241,130,241,241,235,235,228,228,222,255,255,255,228,97,0,250,143,183,183,57,70,163,241,222,228,241,222,248,241,183,255,255,255,228,97,0,250,176,150,143,241,215,202,183,156,130,156,156,196,255,255,228,97,44,189,228,163,116,130,123,156,163,250,12,255,235,235,235,228,228,228,228,97,156,44,255,202,176,250,12,255,189,156,150,143,137,123,116,103,97,255,77,97,255,235,196,183,250,12,255,189,235,235,228,228,228,97,255,57,44,196,250,5,255,189,255,255,248,241,241,103,255,156,44,0,0,0,0,0,5,255,189,255,255,248,241,110,255,209,255,189,255,255,248,123,255,209,255,189,255,255,130,255,209,255,189,255,143,255,209,255,189,255,150,255,209,209,202,202,202,196,196,196,189,156,255)
%Compression Index
var N : array 1 .. 973 of nat1 := init(9,1,4,1,3,1,1,2,3,1,2,1,1,2,1,2,1,1,2,1,2,1,3,9,1,1,2,3,1,1,3,2,1,1,1,2,1,1,2,2,2,2,3,2,1,1,1,9,1,2,3,3,5,4,3,1,1,7,1,4,1,1,9,1,4,3,3,4,1,4,1,2,2,1,6,3,1,1,9,1,6,3,2,5,5,3,2,6,2,1,1,9,1,1,1,6,3,2,5,4,2,1,1,1,6,1,1,1,9,1,3,1,6,3,2,4,1,4,1,1,1,2,2,3,1,1,9,1,5,1,5,3,1,1,3,4,3,2,1,1,4,1,1,9,1,4,1,1,1,1,1,1,3,2,2,2,2,1,1,4,1,1,1,2,2,1,1,9,1,2,2,1,4,1,1,4,1,1,1,1,1,1,1,2,1,1,2,1,2,2,1,1,1,9,1,4,1,5,1,4,1,1,1,1,1,1,1,1,1,1,1,3,2,1,2,1,1,9,1,3,1,1,1,4,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,4,1,1,1,1,1,9,1,3,1,2,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,2,4,2,1,1,9,1,4,1,1,4,1,4,1,2,1,1,1,1,1,1,1,1,3,4,1,1,1,9,1,4,1,2,3,1,1,3,4,2,1,1,1,1,1,1,3,1,3,1,1,9,1,4,1,4,1,1,1,6,1,2,1,2,1,1,2,3,1,2,1,1,9,1,4,1,1,1,1,2,1,2,1,1,1,1,1,3,1,2,1,2,2,3,1,1,1,1,9,1,4,1,5,1,5,1,4,1,4,2,1,1,3,1,1,1,9,1,4,1,5,1,5,1,5,1,5,1,3,2,1,1,9,1,4,1,4,1,1,5,1,2,3,1,1,4,1,2,2,1,1,1,9,1,2,1,1,1,1,1,1,2,1,1,2,1,1,1,1,1,1,1,1,7,1,2,2,1,1,7,1,1,1,1,2,1,1,2,1,1,1,1,5,1,4,1,1,3,1,1,1,2,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,6,1,1,5,1,5,1,4,1,1,3,2,1,1,1,1,1,1,1,1,7,1,1,1,1,1,1,1,1,5,1,5,1,1,4,1,4,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,2,1,1,1,1,1,1,1,1,3,1,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,5,1,5,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,5,1,5,1,5,1,3,2,1,1,1,1,1,2,1,1,1,3,1,1,1,1,1,1,1,1,1,1,5,1,5,1,5,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,2,1,1,1,2,1,1,1,1,1,1,1,4,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,2,1,1,1,1,1,5,1,5,1,5,1,1,4,1,1,1,1,1,1,2,1,1,1,1,1,3,1,1,1,1,1,1,1,5,1,5,1,5,1,2,3,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,5,1,5,1,5,1,3,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,8,2,1,2,2,1,2,1,3,1,1,1,1,1,2,1,1,1,1,1,1,3,1,1,1,1,3,1,20,2,1,1,1,1,1,1,1,1,7,1,2,1,1,1,1,1,1,21,2,1,1,1,1,1,1,1,1,6,1,3,1,1,19,2,1,1,1,1,1,1,1,1,1,1,1,12,1,1,18,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,10,1,1,18,1,3,1,1,1,1,1,3,1,1,1,12,1,18,1,2,1,1,1,1,1,5,1,1,2,1,3,5,1,1,18,1,2,1,1,1,1,12,1,26,1,2,1,1,1,13,1,26,1,2,1,1,14,1,26,1,2,1,15,1,26,1,1,1,16,8,1,1,6,1,1,6,1,3,1,8)


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

end ExcelPic
