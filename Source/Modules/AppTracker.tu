%App Tracker Module
%Colin Creamer
%Febuary 22 2011

%This is a client side Application Tracking module.
%It send infomation to a tracking server to be quried towards an aplication insight
%Asides from just loging usage, the tracking module also retirves update notices
%and gives the user the abilty to download the nerver version if they so please.

/*
 ---- Valid incomming and outgoing variables ----

 CLIENT TO SERVER
 app             :       Name of the application
 ver             :       Version of the application
 user            :       The name of the user running the application
 pc              :       The name of the computer running the application
 os              :       The operating system the application is running under
 id              :       The session ID assigned by the tracking server
 runtime         :       The total duration in seconds the application ran before termination


 SERVER TO CLIENT
 newId           :       New Session ID
 checkIn         :       seconds before next checkIn
 motd            :       Message of the day
 newVer          :       the version number of the newest version
 updateUrl       :       URL download for the update
 changeLogUrl    :       URL of the change log
 productUrl      :       The product page of the app (full html page for the user to view through their web browser)
 */

%TODO have External Update option (check for update of another file)


/*
 Report() sends the iniral report
 Proceess even gives acess to the main loop (trigers Report if not trigered already)
 Quit (Sends End Report)

 */

%LAST MODIFIED : august 19 2011

unit
module Tracker

    %-----Exports-------
    export ProcessEvent, Report, ReportCheckIn, Quit,
	SetURL, SetApp, SetVer, SetOS,
	GetApp, GetVer,
	GetMOTD, GetNewVer, GetUpdateUrl, GetChangeLogUrl, GetProductUrl,
	GetUpdateFileName,
	Debug, DebugOn, DebugOff, LinkUpdateProcedure

    %-----Variables-----
    var QUIT : boolean := false
    var DEBUG : boolean := false
    var firstRun : boolean := true
    var disabled : boolean := false %auto checkin dissabled (happens if chekin time to short)
    var homeURL : string := "http://fireplanet.gotdns.com/tracker/"
    %var homeURL : string := "http://tracker.fireplanet.ca/"
    var checkInTime : int         %next checkin time (alarm clock)



    %Outgoing
    var app, ver, user, pc, os, runtime : string := ""
    user := Sys.GetUserName
    pc := Sys.GetComputerName
    %Incomming
    var ID, checkIn, motd, newVer, updateUrl, changeLogUrl, productUrl : string := ""
    var updateFileName : string %exstraced from updateUrl
    %--------------------------------------------------
    %-----------Functions & Procedures ----------------
    %--------------------------------------------------


    proc debugMsg (msg : string)
	if DEBUG then
	    put msg
	    View.Update
	end if
    end debugMsg


    %-------------------------------------------
    %------ General Purpuse Tool Functions------
    %-------------------------------------------


    %slits the right most file from adress
    function splitAddress (address : string) : string
	var location : int := length (address)
	loop
	    exit when address (location) = "\\"
	    exit when address (location) = "/"
	    location -= 1
	    if location = 0 then
		result address
	    end if
	end loop
	result address (location + 1 .. length (address))
    end splitAddress


    %Recreation of the str_replace PHP Function
    function str_replace (replaceThis : string, replaceWith : string, sourceStr : string) : string
	var newStr : string := sourceStr
	var rIndex : int
	loop
	    rIndex := index (newStr, replaceThis)
	    if rIndex > 0 then
		newStr := newStr (1 .. rIndex - 1) + replaceWith + newStr (rIndex + length (replaceThis) .. *)
	    else
		result newStr
	    end if
	end loop
    end str_replace

    function webSafeURL (url : string) : string
	result str_replace (" ", "%20", url)
    end webSafeURL


    procedure strVarExtract (line : string, var varName : string, var varContent : string)
	var startIndex, midIndex : int
	varName := ""
	varContent := ""

	startIndex := index (line, "~")
	if startIndex > 0 then
	    var tmp : string := line (startIndex + 1 .. *)
	    midIndex := index (tmp, "::") + startIndex
	    if midIndex > startIndex then %found ::
		varName := line (startIndex + 1 .. midIndex - 1)
		varContent := line (midIndex + 2 .. *)
	    end if
	end if
    end strVarExtract



    %-----------------------------------------
    %--- Export Functions & Procedures -------
    %-----------------------------------------

    procedure defultupdateProcedure
	debugMsg ("Update " + newVer + " is avalible!")
    end defultupdateProcedure
    var updateProcedure : procedure x () := defultupdateProcedure

    procedure LinkUpdateProcedure (updateProc : procedure x ())
	updateProcedure := updateProc
    end LinkUpdateProcedure

    %Set to server data
    procedure SetURL (newURL : string)
	homeURL := newURL
    end SetURL
    procedure SetApp (newApp : string)
	app := newApp
    end SetApp
    procedure SetVer (newVer : string)
	ver := newVer
    end SetVer
    procedure SetOS (newOS : string)
	os := newOS
    end SetOS

    %Get from server data
    function GetMOTD () : string
	result motd
    end GetMOTD
    function GetNewVer () : string
	result newVer
    end GetNewVer
    function GetUpdateUrl () : string
	result updateUrl
    end GetUpdateUrl
    function GetChangeLogUrl () : string
	result changeLogUrl
    end GetChangeLogUrl
    function GetProductUrl () : string
	result productUrl
    end GetProductUrl

    function GetUpdateFileName () : string
	result updateFileName
    end GetUpdateFileName

    %Get values you provided back
    function GetApp () : string
	result app
    end GetApp
    function GetVer () : string
	result ver
    end GetVer

    %Turns debug mode on or off
    procedure Debug ()
	DEBUG := not DEBUG
    end Debug
    procedure DebugOn ()
	DEBUG := true
    end DebugOn
    procedure DebugOff ()
	DEBUG := false
    end DebugOff

    %---------------------------------------------------
    %------Propiatary Functions and procedures----------
    %---------------------------------------------------


    procedure updateCallIfVerChange
	%Calls the update Procedure if ther version does not match exactly
	if ver not= newVer then
	    updateProcedure ()
	end if
    end updateCallIfVerChange



    procedure sendAndReceive (UrlAndParams : string)
	%Report to home base
	var netStream : int
	var line : string

	if DEBUG then
	    put "Sending..."
	    put str_replace ("&", chr (10) + chr (9), chr (9) + UrlAndParams (index (UrlAndParams, "?") + 1 .. *)), skip
	    View.Update
	end if

	netStream := Net.OpenURLConnection (webSafeURL (UrlAndParams))
	if netStream <= 0 then
	    debugMsg ("Unable to connect to " + UrlAndParams)
	    return
	end if

	debugMsg ("Retriving...")
	loop
	    exit when eof (netStream)
	    get : netStream, line : *
	    %toDo: store in gloabal array?
	    %SCRATCH THAT.... Store in matching 'Incomming' variable

	    %--- Extract varname and content from line----
	    var vName, vContent : string
	    strVarExtract (line, vName, vContent)
	    %---------------------------------

	    case vName of
		label "newId" :
		    ID := vContent
		label "checkIn" :
		    checkIn := vContent
		label "motd" :
		    motd := vContent
		label "newVer" :
		    newVer := vContent
		label "updateUrl" :
		    updateUrl := vContent
		    updateFileName := splitAddress (updateUrl)
		label "changeLogUrl" :
		    changeLogUrl := vContent
		label "productUrl" :
		    productUrl := vContent
		label :
		    %no valid vars in this line
	    end case
	    if DEBUG then
		%put "LINE: ", line
		if vName not= "" then
		    put chr (9), vName, " = ", vContent
		end if
		View.Update
	    end if
	end loop
	Net.CloseConnection (netStream)
	debugMsg ("")
    end sendAndReceive

    %report during runtime(indecates still alive)
    %Allso refeshes the data resived from the server
    procedure ReportCheckIn
	if ID = "" then
	    return %Session was never started
	end if
	debugMsg ("Check-in Report:")
	var finalURL : string := homeURL + "?id=" + ID
	sendAndReceive (finalURL)
	updateCallIfVerChange
    end ReportCheckIn



    procedure checkInClock
	if disabled then
	    return
	end if
	if not strintok (checkIn) then         %Invalid or no checkin specified
	    debugMsg ("(auto checkin disabled)")
	    disabled := true
	    return                       %(auto checkin disabled)
	elsif strint (checkIn) < 10 then
	    debugMsg ("(auto checkin disabled - to short)")
	    disabled := true
	    return                        %disables if interval less than 10 seconds
	end if

	if Time.Elapsed > checkInTime then
	    const checkMilla : int := strint (checkIn) * 1000                 %Interval in millaseconds
	    checkInTime := Time.Elapsed + checkMilla
	    ReportCheckIn
	    return
	end if
    end checkInClock

    %report sent apon program start
    procedure Report
	if firstRun then
	    firstRun := false
	    debugMsg ("Inisial Report:")
	    var finalURL : string := homeURL + "?app=" + app
	    if ver not= "" then
		finalURL += "&ver=" + ver
	    end if

	    finalURL += "&user=" + user + "&pc=" + pc

	    if os not= "" then
		finalURL += "&os=" + os
	    end if

	    sendAndReceive (finalURL)

	    updateCallIfVerChange

	    if strintok (checkIn) then
		const checkMilla : int := strint (checkIn) * 1000 %Interval in millaseconds
		checkInTime := Time.Elapsed + checkMilla
	    end if

	else
	    ReportCheckIn () %Forward to checkin Report
	end if
    end Report

    %report sent apon program close
    procedure ReportEnd
	if ID = "" then
	    return %Session was never started
	end if
	debugMsg ("Termination Report:")
	var finalURL : string := homeURL + "?id=" + ID + "&runtime=" + intstr (Time.Elapsed)
	sendAndReceive (finalURL)
    end ReportEnd

    %handles aplication shutdown
    procedure Quit ()
	QUIT := true
	ReportEnd
    end Quit


    function ProcessEvent () : boolean
	if ID = "" then
	    result QUIT
	end if

	/*
	 if firstRun then
	 firstRun := false
	 Report ()
	 end if
	 */

	checkInClock %Checks in with server

	result QUIT
    end ProcessEvent


end Tracker

