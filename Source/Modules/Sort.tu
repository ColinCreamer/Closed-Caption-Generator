unit
%Array Sorting Module
%Colin Creamer
%August 14 2011
%August 19 2011

/*
 -Sorts an array of elements. Supports 4 ways of sorting
 _ 1. Sort an array of interger numbers
 ____ Sort an array of text strings...
 _____ 2. According to index numbers found in string
 _____ 3. Alphabetically
 _____ 4. Alphanumerically

 -All results are sorted in asending ordered. (low to high value)
 -Arrays must have a starting point of 1 to be sorted with this module
 (any entrys below array index 1 will not be sorted)
 -Uses Bubble Sort Algorithm
 ___ The Curent implimentation of this sorting modules uses the Bubble Sort Algorithm.
 Though Bubble sort is not the most effisient, and runs much slower. It is the most
 easy sorting a;lgorithm to understand and impliment. Good enough for a first version
 of this sorting class.

 */

module Sort
    %--------------------------
    %-------- Exports ---------
    %--------------------------
    export
	Int, StrByIndex, StrAlphabetically, StrAlphanumerically, %Array sorting
	Index, Alpha, Natural, %shortcuts
	CompareIndexStr, CompareStr, %Tools
	Debug %misc


    %------------------------------------------------------------
    %--------------------- VARIABLES ----------------------------
    %------------------------------------------------------------

    var debug : boolean := false
    var timerStart : int := Time.Elapsed


    %--- Custom Lexicographic Order Lookup Chart ---
    const numAlph : string := "0123456789 aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
    var baSym, spSym : string := ""
    %Compile Basic Symbols
    for i : 33 .. 47
	baSym += chr (i)
    end for
    for i : 58 .. 64
	baSym += chr (i)
    end for
    for i : 91 .. 96
	baSym += chr (i)
    end for
    for i : 123 .. 126
	baSym += chr (i)
    end for
    %Compile Spesial Symbols
    spSym += chr (28)
    for i : 130 .. 255
	spSym += chr (i)
    end for
    %Basic Symbols, Numbers, Space, Lower/Upper, Special Symbols
    const chrVals : string := baSym + numAlph + spSym
    %-----------------------------------------------

    %String Sort Mode Constants
    const SortIndex : int := 1
    const SortAlpha : int := 2
    const SortNatural : int := 3



    %------------------------------------------------------------
    %------------- PROCEDURES AND FUNCTIONS ---------------------
    %------------------------------------------------------------


    %---- Small Procedures ------

    proc Debug
	debug := not debug
    end Debug


    %Time Elapsed Functions
    proc startTimer
	timerStart := Time.Elapsed
    end startTimer

    function checkTimer () : int
	result Time.Elapsed - timerStart
    end checkTimer

    proc debugDisplayTimer (title : string)
	if debug then
	    setscreen ("title:" + title + " - Elapsed Time: " + intstr (checkTimer ()) + "ms")
	end if
    end debugDisplayTimer

    %------------------------------
    %-----Sorting Components-------
    %------------------------------


    /*
     str  : The string that the numbers will be extracted from.
     level: The number entry that will be returned.
     NOTES:
     _____ - If the level does not exist, it will return the lowest posible number (-maxint).
     _____ - Suports negative numbers.
     */
    function exstractNumFromStr (str : string, level : int) : int
	var strTmp : string := ""
	var startIndex : int := 1

	for l : 1 .. 255 %loops for each posible level block
	    strTmp := ""
	    exit when startIndex = length (str)
	    for i : startIndex .. length (str) %loops till first num chr found
		for j : i .. length (str) %loops to concatonate seqential numbers
		    if strintok (str (j)) then
			%Adds Negative it exists
			if j = i then %first chr?
			    if j > startIndex and str (j - 1) = "-" then %neg befor first chr?
				strTmp += "-" %add neg to concatonation
			    end if
			end if
			%Concatonates seqential numbers
			strTmp += str (j)
		    else
			%Marks the starting location for the next loop
			startIndex := j
			exit
		    end if
		end for
		exit when strTmp not= ""
	    end for
	    exit when l = level
	end for

	if strTmp = "" then
	    result - maxint
	end if
	result strint (strTmp)
    end exstractNumFromStr



    %returns the smalest of 2 numbers
    function smallestInt (num1, num2 : int) : int
	if num1 < num2 then
	    result num1
	end if
	result num2
    end smallestInt

    %Compares 2 strings
    function CompareTo (str1, str2 : string, handleNumbers : boolean) : int
	%A quick exit if they are the same
	if str1 = str2 then
	    result 0
	end if
	%String lengths
	const len1 : int := length (str1)
	const len2 : int := length (str2)
	%Determin by length if either are null
	if str1 = "" or str2 = "" then
	    if len1 > len2 then
		result - 1
	    elsif len1 < len2 then
		result 1
	    else
		result 0
	    end if
	end if
	%Shortest String
	var shortest : int := smallestInt (len1, len2)
	%Loops through string until larger or smaler value found
	var val1, val2 : int
	var skipLoop : int := 0 %skips over already checked number characters
	for i : 1 .. shortest
	    if skipLoop < 1 then
		if handleNumbers and (strintok (str1 (i)) and strintok (str2 (i))) then
		    %Numeric comaprason
		    val1 := exstractNumFromStr (str1 (i .. len1), 1)
		    val2 := exstractNumFromStr (str2 (i .. len2), 1)
		    skipLoop := length (intstr (smallestInt (val1, val2))) - 1
		else %Chr to chr alfabertical comaprason
		    val1 := index (chrVals, str1 (i))
		    val2 := index (chrVals, str2 (i))
		end if
		if val1 > val2 then
		    result - 1
		elsif val1 < val2 then
		    result 1
		end if
	    else
		skipLoop -= 1
	    end if
	end for
	%Breaks the tie with the str length
	if len1 > len2 then
	    result - 1
	elsif len1 < len2 then
	    result 1
	end if
	%Must be the same (should never be hit)
	result 0
    end CompareTo

    %User Freindly Method of comparing 2 stings (Compared Alfa-Numaricaly)
    function CompareStr (str1, operator, str2 : string) : boolean
	const value : int := CompareTo (str1, str2, true)
	case operator of
	    label "<" :
		result value = 1
	    label ">" :
		result value = -1
	    label : %"="
		result value = 0
	end case
    end CompareStr



    %Returns the difernce between 2 the index numbers in 2 strings
    %Similar to CompareTo(),but judges strictly on the index numers (ignoring all other characters)
    % -1 := str1 > str2
    %  0 := str1 = str2
    %  1 := str1 < str2
    function CompareIndexTo (str1, str2 : string) : int
	%String lengths
	const len1 : int := length (str1)
	const len2 : int := length (str2)
	%Determin by length if either are null
	if str1 = "" or str2 = "" then
	    if len1 > len2 then
		result - 1
	    elsif len1 < len2 then
		result 1
	    else
		result 0
	    end if
	end if
	var val1, val2 : int
	for d : 1 .. smallestInt (len1, len2)
	    val1 := exstractNumFromStr (str1, d)
	    val2 := exstractNumFromStr (str2, d)
	    %loop untill differnce found in numbers
	    exit when val1 not= val2
	    %no more number sets found signal
	    if val1 = -maxint and val2 = -maxint then
		result 0
	    end if
	end for
	if val1 > val2 then
	    result - 1
	elsif val1 < val2 then
	    result 1
	end if
	result 0
    end CompareIndexTo

    %User Freindly Method of comparing 2 stings (Compared By Index)
    function CompareIndexStr (str1, operator, str2 : string) : boolean
	const value : int := CompareIndexTo (str1, str2)
	case operator of
	    label "<" :
		result value = 1
	    label ">" :
		result value = -1
	    label :     %"="
		result value = 0
	end case
    end CompareIndexStr



    %Swaps 2 strings
    proc strSwap (var v1, v2 : string)
	var vTmp : string := v2
	v2 := v1
	v1 := vTmp
    end strSwap

    %Swaps 2 intergers
    proc swapInt (var v1, v2 : int)
	var vTmp : int := v2
	v2 := v1
	v1 := vTmp
    end swapInt

    proc bubbleSwapInt (var v1, v2 : int)
	if v1 > v2 then
	    swapInt (v1, v2)
	end if
    end bubbleSwapInt


    %---------------------
    %--- SORTING LOOPS ---
    %---------------------


    %Sorts a list of intigers using Bubble Sort
    procedure BubbleInt (var intList : array 1 .. * of int)
	startTimer
	for decreasing j : upper (intList) .. 2
	    for i : 2 .. j
		bubbleSwapInt (intList (i - 1), intList (i))
	    end for
	end for
	debugDisplayTimer ("BubbleInt")
    end BubbleInt


    %Sorts a list of stings using Bubble Sort
    procedure BubbleStr (var strList : array 1 .. * of string, mode : int)
	startTimer
	%Bubble Sort
	for decreasing j : upper (strList) .. 2
	    for i : 2 .. j
		case mode of
		    label SortIndex :
			%put "Sort.StrByIndex  Not Yet Available "
			if CompareIndexTo (strList (i - 1), strList (i)) < 0 then
			    strSwap (strList (i - 1), strList (i))
			end if
		    label SortAlpha :
			if CompareTo (strList (i - 1), strList (i), false) < 0 then
			    strSwap (strList (i - 1), strList (i))
			end if
		    label :     %Everything else, SortNatural
			if CompareTo (strList (i - 1), strList (i), true) < 0 then
			    strSwap (strList (i - 1), strList (i))
			end if
		end case
	    end for
	end for
	debugDisplayTimer ("BubbleStr [mode" + intstr (mode) + "]")
    end BubbleStr



    %-----------------------------------------------------------------------------
    %---------------Main (Exported) Procedures -----------------------------------
    %-----------------------------------------------------------------------------


    procedure Int (var intList : array 1 .. * of int)
	BubbleInt (intList)
    end Int

    procedure StrByIndex (var strList : array 1 .. * of string)
	BubbleStr (strList, SortIndex)
    end StrByIndex

    procedure StrAlphabetically (var strList : array 1 .. * of string)
	BubbleStr (strList, SortAlpha)
    end StrAlphabetically

    procedure StrAlphanumerically (var strList : array 1 .. * of string)
	BubbleStr (strList, SortNatural)
    end StrAlphanumerically


    %ShortCuts
    proc Index (var strList : array 1 .. * of string)
	StrByIndex (strList)
    end Index
    proc Alpha (var strList : array 1 .. * of string)
	StrAlphabetically (strList)
    end Alpha
    proc Natural (var strList : array 1 .. * of string)
	StrAlphanumerically (strList)
    end Natural

end Sort

