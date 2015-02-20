unit



%Modular File Browser
%Richard Colin Creamer
%January 30 2012

%This is just taking File Browser v14.3 and converting
%it into a modle form as is so that it can be embeded into other programs.
%It will return a folder and or file path


/*ADDED FEATURES
 -Pinned status Log
 The staus log will follow the browser window as though its attached
 -Status toggle by pressing status bar

 -System info
 Tells you basic computer info
 Tells you local network info
 tells you external network info

 -

 */


module FileBrowse


    %--------------------------------
    %--Imports ----------------------
    %--------------------------------

    import (
    %Modules
	%"Modules\\preSetScreen.tu",     % Displays a simple loading screen.
	"Modules\\gui2.tu",             % Improved version of the turring GUI module
	"Modules\\VBS module Simplified.tu",       % Turring to VBS API
	"Modules\\EI Library\\EI_Manager.tu",     % Renders image graphics from hardcoded embeded data.
	"Modules\\WindowUIs\\InputBox.ti",
	"Modules\\WindowUIs\\About.ti",
	"Modules\\WindowUIs\\SysInfo.ti",


	"Modules\\genIcoBtnPic.tu"

	)

    export Inisalize, Show, Quit





    %----Global Vars------
    var windowID : int
    var screenShot : int

    const screenStartY : int := 0 %18 %The height at which the fade screen efect start

    %Gui Widgits
    var dialogMessage, inputField : int


    %Preforms a window shake animation
    proc windowShake (winID : int)
	%Shake settings
	const shakeTimes : int := 3
	const shakeWidth : int := 20
	const shakeSpeed : int := 1
	%Gets original window position
	var x, y : int
	Window.GetPosition (winID, x, y)
	%Do Shake
	for t : 1 .. shakeTimes
	    for s : 1 .. shakeWidth by shakeSpeed
		Window.SetPosition (winID, x + s, y)
	    end for
	    for decreasing s : shakeWidth .. shakeWidth * -1 by shakeSpeed
		Window.SetPosition (winID, x + s, y)
	    end for
	    for decreasing s : shakeWidth * -1 .. 0 by shakeSpeed
		Window.SetPosition (winID, x + s, y)
	    end for
	end for
	%Set back original position
	Window.SetPosition (winID, x, y)
	delay (500)
    end windowShake

    proc windowsDing
	var soundPath : string := "C:\\Windows\\Media\\Windows Ding.wav"
	%Try win XP path
	if not File.Exists (soundPath) then
	    soundPath := "C:\\Windows\\Media\\Windows XP Ding.wav"
	end if
	%Play Sound
	if File.Exists (soundPath) then
	    Music.PlayFileReturn (soundPath)
	end if
    end windowsDing

    procedure drawWindowScreen
	%Create Revert Picture
	screenShot := Pic.New (0, screenStartY, maxx, maxy)
	%Draw the screen
	Draw.Line (0, screenStartY, maxx, screenStartY, black)
	for i : 1 .. maxx + (maxy - screenStartY) by 2
	    Draw.Line (i, screenStartY, 0, i + screenStartY, darkgrey)
	end for
    end drawWindowScreen


    procedure removeWindowScreen
	Pic.Draw (screenShot, 0, screenStartY, picCopy)
	Pic.Free (screenShot)
    end removeWindowScreen



    var fileSelected : boolean := false
    proc selectFile
	fileSelected := true
    end selectFile











    % File Browser
    % Programer: Colin Creamer
    % Date: Decenmber 15 2007

    % Last Modified: September 26 2010  (v13)
    % Last Modified: July 21 2011  (v14)
    % Last Modified: July 25 2011 (v14.2) Browser 2 Alpha


    % TO DO:    advance the icons
    %           - if a folder contains a file called "Briefcase Database" use brefcase icon
    %           - if .jpg or .bmp display image
    %           - if .gif play gif
    %           - if other image extension diplay genaric picture icon (.tif .icn .icon .tga . tiff .ai)
    %           -Video image extentions (.avi .wmv .mpg .mpeg .mp1 .mp2 .mp4 .divx .qt .mov .moov) display genaric icon
    %           -genaric audio icon (.wav .mp3 .wma .ram
    %           -add common extention icons (.txt .bat .doc .exe .dll)




    % /-------------------------------------------------------\
    %|----------Gloabal Variables ----------------------------/
    %|--------------------------------------------------|
    % \------------------------------------------------/


    %-----Settings------
    const title : string := "File Browser"
    const version : string := "v14.3"

    var titlePrefex : string := "Browser   :   "
    var backColor : int := 30 %light Grey

    const programRoot : string := Dir.Current

    var QUIT : boolean := false %Tells any parraless process to halt

    About.SetAppName (title)
    About.SetVersion (version)

    %------------------------------------
    %----Infomation Storage Memory-------
    %------------------------------------

    %Directory listing infomation Memory
    var fileCount : int := 0 %number of entrys in the list
    var fileName : flexible array 1 .. 0 of string
    var size, fileTime : flexible array 1 .. 0 of int
    var fileType, fileAttributes : flexible array 1 .. 0 of string

    %Browse History Memory
    var backForward : flexible array 1 .. 0 of string
    var BFPosition : int := 1
    var MaxBFPosition : int

    %Copy/past Memory
    var srcPath, srcPathName, destPathName, copyFileName : string %copy and past info
    var copyStatus : int := 0    %0 = nothing    1 = copy    2 = cut

    %StatusPost Log
    var statusPostEntry : flexible array 1 .. 0 of string

    %Spesial Locations
    var userRootPath : string := "C:\\Users\\" + Sys.GetUserName %VISTA/WIN7

    var myDocsPath : string := userRootPath + "\\Documents"
    var myMusicPath : string := userRootPath + "\\Music"
    var myPicturesPath : string := userRootPath + "\\Pictures"
    var myVideosPath : string := userRootPath + "\\Videos"

    if not Dir.Exists (userRootPath) then
	userRootPath := "C:\\Documents and Settings\\" + Sys.GetUserName %XP

	myDocsPath := userRootPath + "\\My Documents"
	myMusicPath := myDocsPath + "\\My Music"
	myPicturesPath := myDocsPath + "\\My Pictures"
	myVideosPath := myDocsPath + "\\My Videos"
    end if
    var DesktopPath : string := userRootPath + "\\Desktop"




    %---------------------------------
    %----Widgit ID Numbers------------
    %---------------------------------

    %Gui Widgets
    var AddressBar : int
    var DirectoryList : int
    var renameField : int

    %Lable IDs
    var FileNameLabel, sizeLabel, fileTimeLabel, fileTypeLabel, fileAttributesLabel, fileCountLabel : int
    var messageLabel, extentionLabel : int

    %Buton IDs
    var refreshButton, upDirButton, backButton, forwardButton : int
    var copyButton, pasteButton, pasteShortcutButton, renameButton, editButton, newDirButton, newFileButton, deleteButton, destroyButton, SelectButton, CancelButton : int
    var goPicButton, openInExplorerButton, exitPicButton : int

    %Menu IDs
    %---File---
    var m1, m1Open, m1Refresh, m1Browse, m1OpenLoc, m1Exit : int
    %---Edit---
    var m2, m2Copy, m2CopyLink, m2Cut, m2Paste, m2Rename, m2Edit, m2NewFolder, m2NewFile, m2Delete, m2Destroy : int
    %--Goto/Navigate ---
    var m3, m3MyComputer, m3Desktop, m3MyDocuments, m3MyPictures, m3MyMusic, m3MyVideos, m3ProgRoot : int
    %--- View ---
    var m4, m4ShowStatusLog, m4HideStatusLog, m4SysInfo : int

    %--Help---
    var m9, m9SysInfo, m9About : int

    %Window IDs
    var renameWindow : int


    %---------------------------------
    %---- Fonts ----------------------
    %---------------------------------

    const standard10 : int := Font.New ("Arial:10")
    const standard12 : int := Font.New ("Arial:12")

    const propTableEntry_font : int := Font.New ("sans serif:8:Bold")

    %---------other----------

    var objectNum : int := 1 %Like a gloabal curent selection ID (might be able to rewrite to get rid of this var)

    var showDrivesStatus : int := 0 %this is used so that the provios directory can make it into my computer"
    var showDrivesOn : int         %This is used to let the rest of the program know that the you are in my computer



    %--------------------------------------------------------
    %---- Pre-Rendering Some of the GUI Graphics--------------
    %---------------------------------------------------------

    %To hide the drawing prosess
    View.Set ("offscreenonly")

    %EI.RenderAll()

    const backgroundSkin : int := EI.BrowserSkinPicID ()

    %Location Icons
    const myComputerPic : int := EI.My_ComputerPicID ()
    const floppyPic : int := EI.FloppyPicID ()
    const floppyPicSm : int := Pic.Scale (floppyPic, 30, 30)
    const drivePic : int := EI.HDDPicID ()
    const drivePicSm : int := Pic.Scale (drivePic, 30, 30)
    const folderPic : int := EI.FolderPicID ()
    const folderPicSm : int := Pic.Scale (folderPic, 30, 30)

    %Button Pics

    const upDirPic : int := EI.UpDirPicID ()
    const refreshPic : int := EI.RefreshPicID ()
    const arrowRPic : int := EI.RightArrow16xPicID ()
    const arrowLPic : int := Pic.Mirror (arrowRPic)
    const goPic : int := EI.Go16xPicID ()
    const copy16xPic : int := EI.Copy16xPicID ()
    const paste16xPic : int := EI.Paste16xPicID ()

    const OkBtnPic : int := EI.Ok_btnPicID ()
    const CancelBtnPic : int := EI.Cancel_btnPicID ()

    /* Disabled for mini browser
     const cut16xPic : int := EI.Cut16xPicID ()
     const exitPic : int := EI.ExitPicID ()

     %Generated Buttons
     IcoBtnPic.SetBackGrad (EI.BtnGradStripPicID ())

     const copyBtnPic : int := IcoBtnPic.Gen (copy16xPic, 64, "Copy")
     const cutBtnPic : int := IcoBtnPic.Gen (cut16xPic, 64, "Cut")
     const pasteBtnPic : int := IcoBtnPic.Gen (paste16xPic, 64, "Paste")
     const pasteShortcutBtnPic : int := IcoBtnPic.Gen (EI.ShortcutPicID (), 118, "Paste Shortcut")

     const openLocBtnPic : int := IcoBtnPic.Gen (EI.WinFolderPicID (), 118, "Open Location")
     const renameBtnPic : int := IcoBtnPic.Gen (EI.Rename16xPicID (), 92, "Rename")
     const editBtnPic : int := IcoBtnPic.Gen (EI.Edit16xPicID (), 92, "Edit")
     const newFolderBtnPic : int := IcoBtnPic.Gen (EI.NewFolder16xPicID (), 92, "New Folder")
     const newFileBtnPic : int := IcoBtnPic.Gen (EI.File16xPicID (), 92, "New File")
     const deleteFileBtnPic : int := IcoBtnPic.Gen (EI.Delete16xPicID (), 92, "Delete File")
     const destroyFileBtnPic : int := IcoBtnPic.Gen (EI.FileCorupt16xPicID (), 92, "Destroy File")
     */

    %---File Icon Location --
    var fileIconX : int := 294 %maxx - (maxx div 4)
    var fileIconY : int := 90 %maxy div 2
    %550, 50
    %Area Icon Location (eg, my computer, hardrive, floppy..)
    var areaIconX : int := 8
    var areaIconY : int := maxy - 61


    Pic.Draw (backgroundSkin, 0, 0, picCopy)
    %The Blank Picture----------------------------
    %Draw.FillBox (0, 0, 100, 150, backColor) %Background
    var fileBlankPic : int := Pic.New (fileIconX, fileIconY, fileIconX + 47, fileIconY + 50)
    var areaBlankPic : int := Pic.New (areaIconX, areaIconY, areaIconX + 25, areaIconY + 30)

    cls
    %Tests screen mode back to defult
    View.Set ("nooffscreenonly")



    % /-----------------------------------------------------------------------\
    %|-------------- Procedures ----------------------------------------------/
    %|----------------------------------------------------------------|
    % \---------------------------------------------------------------/


    %--------------------------------------------------------------
    %------- Generic Tool Procedures ------------------------------
    %--------------------------------------------------------------

    %Extracts an extension from the filename or removes it
    function extExstract (filename : string, returnExtension : boolean) : string
	for decreasing i : length (filename) .. 1
	    if filename (i) = "." then
		if returnExtension then
		    result filename (i + 1 .. *) %returns extension
		else
		    result filename (1 .. i - 1) %returns file name
		end if
	    end if
	end for
	%No extension found.. return filename
	result filename
    end extExstract


    %Returns the file of folder name from a path
    function splitAddress (address : string) : string
	if address = "" then
	    result ""
	end if
	if length (address) = 3 then
	    result address (1 .. 2)
	end if
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


    %Limits a string length to an exact pixel length
    function strLimitExact (str : string, pixelMaxLength, fontID : int) : string

	if Font.Width (str, fontID) <= pixelMaxLength then
	    %Short Enough
	    result str
	end if

	const prefex : string := "..."
	const prefexLength : int := Font.Width (prefex, fontID)
	var trimStr : string := str

	for decreasing i : length (str) .. 1
	    if Font.Width (trimStr, fontID) + prefexLength > pixelMaxLength then
		trimStr := trimStr (1 .. i)
	    else
		exit
	    end if
	end for

	%removes dot if on trim edge (to avoid .... insted of ...)
	if trimStr (length (trimStr)) = "." then
	    trimStr := trimStr (1 .. length (trimStr) - 1)
	end if

	result Str.Trim (trimStr) + prefex
    end strLimitExact


    %if seconds is 0 then it uses current time
    function dateStr (seconds : int) : string
	var sec : int := seconds
	if seconds = 0 then
	    sec := Time.Sec
	end if
	%adds st, ed, th to the day
	var day : string := Time.SecStr (sec, "d")
	%Trims off placeholder 0
	if day (1) = "0" then
	    day := day (2)
	end if
	var longDay : string
	const day_OnesColum : char := day (length (day))
	if day_OnesColum = "1" and day not= "11" then
	    longDay := day + "st"
	elsif (day_OnesColum = "2" and day not= "12") or (day_OnesColum = "3" and day not= "13") then
	    longDay := day + "ed"
	else
	    longDay := day + "th"
	end if
	result Time.SecStr (sec, "B ") + longDay + Time.SecStr (sec, ", Y")
    end dateStr

    %if seconds is 0 then it uses current time
    function timeStr (seconds : int) : string
	var sec : int := seconds
	if seconds = 0 then
	    sec := Time.Sec
	end if
	var hours : string := Time.SecStr (sec, "I")
	const minsAmPm : string := Time.SecStr (sec, "Mp")
	if hours (1) = "0" then %Removes 0 Placeholder
	    hours := hours (2)
	end if
	result hours + ":" + minsAmPm
    end timeStr

    %Returns both date and time as string
    function dateTimeStr (seconds : int) : string
	result dateStr (seconds) + " at " + timeStr (seconds)
    end dateTimeStr


    const bytesInKB : int := 1024
    const bytesInMB : int := 1048576
    const bytesInGB : int := 1073741824

    function sizeStr (bites : int) : string
	%Returns the size in String form in the most appropriate unit
	if bites < bytesInKB then
	    result intstr (bites) + " Bytes"
	elsif bites < bytesInMB then
	    result frealstr (bites / bytesInKB, 0, 1) + " KB"
	elsif bites < bytesInGB then
	    result frealstr (bites / bytesInMB, 0, 1) + " MB"
	else
	    result frealstr (bites / bytesInGB, 0, 1) + " GB"
	end if
    end sizeStr



    %indexR (s , patt : string ) : int
    %Same as index()... but returns the index of the right most occurence
    function indexR (s, patt : string) : int
	const sLen : int := length (s)
	const pattLen : int := length (patt)
	for decreasing i : (sLen - pattLen) + 1 .. 1
	    if s (i .. i + pattLen - 1) = patt then
		result i
	    end if
	end for
	result 0 %no pattern found
    end indexR


    %Capitalizes first leter of a string
    function capitalize (str : string) : string
	if length (str) < 2 then
	    result Str.Upper (str)
	end if
	result Str.Upper (str (1)) + str (2 .. length (str))
    end capitalize


    /*Returns a interger as a string with a spesifed number of placeholders.
     ___ num = the interger you want to be converted to a string
     ___ placeValue:= The character to be used as a placeholder
     ___ placeLength = the number of place values you want to be held.*/
    function placeHolder (num : int, placeValue : char, placeLength : int) : string
	var numStr := intstr (num)
	var numDigits := length (numStr)
	if numDigits >= placeLength then
	    result numStr
	end if
	result repeat (placeValue, placeLength - numDigits) + numStr
    end placeHolder


    %Scales a pictue porpotialy within a bounding box
    function autoPicScale (picID : int, maxSize : int) : int
	const picW : int := Pic.Width (picID)
	const picH : int := Pic.Height (picID)
	var scaleW, scaleH : real
	if picW >= picH then
	    %Wider
	    scaleW := maxSize
	    scaleH := (maxSize / picW) * picH
	else
	    %Taller
	    scaleH := maxSize
	    scaleW := (maxSize / picH) * picW
	end if
	result Pic.Scale (picID, round (scaleW), round (scaleH))
    end autoPicScale


    %--------------------------------------------------------------
    %-------Porpriatory Procedures --------------------------------
    %--------------------------------------------------------------

    var lastStatusPostMessage : string := ""
    process autoClearStatusPost (message : string)
	const secDelay : int := 6
	for t : 1 .. secDelay * 4
	    delay (250)
	    if QUIT or message not= lastStatusPostMessage then
		%Cancels the autoClear if the message changes or the program is quiting
		return
	    end if
	end for
	if message = lastStatusPostMessage then
	    GUI.SetLabel (messageLabel, "")
	end if
    end autoClearStatusPost

    %Updates new status messages

    const statusLogWinID : int := Window.Open ("text:8;42, title:Status Log, invisible")
    Window.Select (defWinID)
    var statusLogCount : int := 0
    var statusLogVisible : boolean := false
    var statusLogPinned : boolean := true
    var browserWin_LastX, browserWin_LastY : int := 0
    var statusWin_LastX, statusWin_LastY : int

    var lastDirCurrent : string := Dir.Current
    procedure statusPost (statusMessage : string)
	lastStatusPostMessage := statusMessage
	GUI.SetLabel (messageLabel, statusMessage)
	if statusMessage not= "" then
	    const originalWindowSelect : int := Window.GetSelect ()
	    var n, sec : int
	    Time.SecParts (Time.Sec, n, n, n, n, n, n, sec)
	    %select log window
	    Window.Select (statusLogWinID)
	    statusLogCount += 1
	    put placeHolder (statusLogCount, " ", 5), ". [" + timeStr (0) + "-" + placeHolder (sec, "0", 2) + "s] " + statusMessage
	    if lastDirCurrent not= Dir.Current then
		if length (Dir.Current) < length (lastDirCurrent) then
		    put "     \\_|DIR Change| | <<< | ", Dir.Current
		else
		    put "     \\_|DIR Change| | >>> | ", Dir.Current
		end if
		lastDirCurrent := Dir.Current
	    end if
	    %Restores Originaly selected Window
	    Window.Select (originalWindowSelect)
	    %Start auto Clear
	    fork autoClearStatusPost (statusMessage)
	end if
    end statusPost



    procedure toggelStatusLogVisability
	if statusLogVisible then
	    statusPost ("Status Window Compressed")
	    statusLogVisible := false
	    Window.Hide (statusLogWinID)
	    GUI.Disable (m4HideStatusLog)
	    GUI.Enable (m4ShowStatusLog)
	else
	    statusPost ("Status Window Expanded")
	    statusLogVisible := true
	    GUI.Disable (m4ShowStatusLog)
	    GUI.Enable (m4HideStatusLog)
	    const origActiveWin : int := Window.GetActive ()
	    var x, y : int
	    Window.GetPosition (windowID, x, y)
	    browserWin_LastX := x
	    browserWin_LastY := y
	    %Window.GetPosition (defWinID, x, y)
	    Window.SetActive (statusLogWinID) %just for maxy reading
	    Window.SetPosition (statusLogWinID, x, y - (maxy + 30))
	    Window.Show (statusLogWinID)
	    Window.SetActive (origActiveWin)
	end if
    end toggelStatusLogVisability

    %Follows Browser window
    procedure PinnedStatusFollow
	if statusLogVisible then
	    if statusLogPinned then
		if Window.GetActive = windowID then
		    var x, y : int
		    Window.GetPosition (windowID, x, y)
		    %Detect Movement
		    if x + (y * 2) not= browserWin_LastX + (browserWin_LastY * 2) then
			const origActiveWin : int := Window.GetActive ()
			Window.SetActive (statusLogWinID) %just for maxy reading
			Window.SetPosition (statusLogWinID, x, y - (maxy + 30))
			Window.SetActive (origActiveWin)

			browserWin_LastX := x
			browserWin_LastY := y
		    end if
		end if
	    end if
	end if
    end PinnedStatusFollow


    procedure processStatusWindow
	%pauses everythign while in text window
	if Window.GetActive = statusLogWinID then
	    loop
		exit when Window.GetActive not= statusLogWinID
	    end loop
	end if

	%nonitor for status bar click
	if Window.GetActive = windowID then
	    var mx, my, mb : int
	    mousewhere (mx, my, mb)
	    if mb = 1 then
		if my < 10 then
		    for i : 1 .. 400 by 10     %0.4 sec to release
			delay (10)
			mousewhere (mx, my, mb)
			if mb = 0 then
			    toggelStatusLogVisability
			    exit
			end if
		    end for
		end if
	    end if
	end if

	PinnedStatusFollow     %Status log follows browser window when pined

    end processStatusWindow

    procedure setAreaTitle (areaText : string)
	setscreen ("title:" + titlePrefex + "\"" + areaText + "\"")
    end setAreaTitle


    procedure clearDirList
	fileCount := 0
	GUI.ClearText (DirectoryList)
    end clearDirList

    %Resize File Info Arrays
    procedure resizeDirListArrays (newArrayLength : int)
	new fileName, newArrayLength
	new size, newArrayLength
	new fileTime, newArrayLength
	new fileType, newArrayLength
	new fileAttributes, newArrayLength
    end resizeDirListArrays

    %Called at the end of a directory listing query
    procedure propertyLableReset
	GUI.SetLabel (FileNameLabel, "")
	GUI.SetLabel (sizeLabel, "")
	GUI.SetLabel (fileTimeLabel, "")
	GUI.SetLabel (fileTypeLabel, "")
	GUI.SetLabel (fileAttributesLabel, "")
	Pic.Draw (fileBlankPic, fileIconX, fileIconY, picCopy)

	var tempCount : string
	tempCount := GUI.GetText (AddressBar) + "*"
	Pic.Draw (areaBlankPic, areaIconX, areaIconY, picCopy)
	if GUI.GetText (AddressBar) = "A:/" or GUI.GetText (AddressBar) = "B:/" then
	    Pic.Draw (floppyPicSm, areaIconX, areaIconY, picMerge)
	elsif index (tempCount, "*") = 4 then
	    Pic.Draw (drivePicSm, areaIconX, areaIconY, picMerge)
	else
	    Pic.Draw (folderPicSm, areaIconX, areaIconY, picMerge)
	end if

	setAreaTitle (splitAddress (Dir.Current))

    end propertyLableReset


    procedure DirListing
	statusPost ("Loading Directory...")

	clearDirList

	var streamNumber, attr : int
	var tmp : string

	%Pre Counts The number of entrys in the directory
	streamNumber := Dir.Open (".")
	if Error.Last not= eNoError then
	    const eLast : string := Error.LastMsg
	    if streamNumber = 0 then
		statusPost ("Failed to open Directory.   (" + Dir.Current + ")")
		delay (1000)
	    end if
	    statusPost ("Error: " + eLast)
	    return
	end if

	fileCount -= 2 %removes . & .. from count
	loop
	    tmp := Dir.Get (streamNumber)
	    exit when tmp = ""
	    fileCount += 1
	end loop
	Dir.Close (streamNumber)

	%Resize File Info Arrays
	resizeDirListArrays (fileCount)



	%Gathers Directory Info and saves into data arrays
	streamNumber := Dir.Open (".")

	tmp := Dir.Get (streamNumber) %Discard "." entry
	tmp := Dir.Get (streamNumber) %Discard ".." entry

	GUI.Hide (DirectoryList)

	for i : 1 .. fileCount
	    fileType (i) := ""
	    fileAttributes (i) := ""

	    Dir.GetLong (streamNumber, fileName (i), size (i), attr, fileTime (i))

	    GUI.AddLine (DirectoryList, fileName (i))

	    if (attr and attrDir) not= 0 then
		fileType (i) := fileType (i) + "Folder"
	    end if

	    %put Time.SecDate (fileTime), " " ..
	    if (attr and attrRead) not= 0 then
		if fileAttributes (i) not= "" then
		    fileAttributes (i) := fileAttributes (i) + ", "
		end if
		fileAttributes (i) := fileAttributes (i) + "Read"
	    end if
	    if (attr and attrWrite) not= 0 then
		if fileAttributes (i) not= "" then
		    fileAttributes (i) := fileAttributes (i) + ", "
		end if
		fileAttributes (i) := fileAttributes (i) + "Write"
	    end if

	    if (attr and attrExecute) not= 0 then
		if fileType (i) not= "" then
		    fileType (i) := fileType (i) + ", "
		end if
		fileType (i) := fileType (i) + "Application"
	    end if
	    if (attr and attrHidden) not= 0 then
		if fileAttributes (i) not= "" then
		    fileAttributes (i) := fileAttributes (i) + ", "
		end if
		fileAttributes (i) := fileAttributes (i) + "Hidden"
	    end if
	    if (attr and attrSystem) not= 0 then
		if fileType (i) not= "" then
		    fileType (i) := fileType (i) + ", "
		end if
		fileType (i) := fileType (i) + "System"
	    end if
	    if (attr and attrVolume) not= 0 then
		if fileType (i) not= "" then
		    fileType (i) := fileType (i) + ", "
		end if
		fileType (i) := fileType (i) + "Volume"
	    end if
	    if (attr and attrArchive) not= 0 then
		if fileType (i) not= "" then
		    fileType (i) := fileType (i) + ", "
		end if
		fileType (i) := fileType (i) + "File"
	    end if

	end for


	GUI.Show (DirectoryList)
	GUI.SetTopLine (DirectoryList, 1)


	Dir.Close (streamNumber)

	GUI.SetLabel (fileCountLabel, intstr (fileCount) + " Objects")

	%GUI.Disable (openButton)
	GUI.Disable (m2Copy)
	GUI.Disable (m2Delete)
	GUI.Disable (m2Rename)

	if copyStatus = 0 then
	    GUI.Disable (m2Paste)
	end if

	propertyLableReset
	statusPost ("")

	%-----------------------

	showDrivesOn := 0
	showDrivesStatus := 0
	GUI.Enable (upDirButton)

    end DirListing




    procedure showDrives
	clearDirList
	resizeDirListArrays (25)
	GUI.Disable (upDirButton)
	statusPost ("Searching for drives...")
	for i : 1 .. 25
	    if Dir.Exists ((chr (i + 64) + ":" + "\\")) then
		fileCount += 1
		fileName (fileCount) := (chr (i + 64) + ":" + "\\")
		GUI.AddLine (DirectoryList, fileName (fileCount))
	    end if
	end for

	showDrivesStatus := 1
	showDrivesOn := 1
	Pic.Draw (areaBlankPic, areaIconX, areaIconY, picCopy)
	Pic.Draw (myComputerPic, areaIconX, areaIconY, picMerge)
	setAreaTitle ("My Computer")
	GUI.SetText (AddressBar, "My Computer")
	statusPost ("")
    end showDrives


    procedure refresh
	%Refresh Directoy of Drive listing
	if showDrivesStatus = 0 then
	    DirListing
	else
	    showDrives
	end if
    end refresh


    procedure refresh_Btn
	const beforeCount : int := fileCount
	refresh
	%States any changes
	statusPost ("Listing refreshed " + intstr (fileCount - beforeCount) + " new objects")
    end refresh_Btn


    %----- Browsing Histroy procedures -----
    %---------------------------------------

    %Disable and enables Back and forward buttons
    procedure DisableBF
	if BFPosition = MaxBFPosition then
	    GUI.Disable (forwardButton)
	else
	    GUI.Enable (forwardButton)
	end if
	if BFPosition = 2 then
	    GUI.Disable (backButton)
	else
	    GUI.Enable (backButton)
	end if
    end DisableBF

    %Save Browsing history. Back and forward path strings
    procedure saveHistory
	if GUI.GetText (AddressBar) = "My Computer" or Dir.Exists (GUI.GetText (AddressBar)) then
	    BFPosition += 1
	    new backForward, BFPosition %Resize Array
	    backForward (BFPosition) := GUI.GetText (AddressBar)      %Dir.Current
	    MaxBFPosition := BFPosition
	    DisableBF
	else
	    statusPost ("Invalid Address")
	end if
    end saveHistory

    %Forward Button
    procedure Forward
	BFPosition += 1
	if backForward (BFPosition) = "My Computer" then
	    showDrives
	else
	    Dir.Change (backForward (BFPosition))
	    GUI.SetText (AddressBar, Dir.Current)
	    DirListing
	end if
	DisableBF
    end Forward

    %Back Button
    procedure Back
	BFPosition -= 1
	if backForward (BFPosition) = "My Computer" then
	    showDrives
	else
	    Dir.Change (backForward (BFPosition))
	    GUI.SetText (AddressBar, Dir.Current)
	    DirListing
	end if
	DisableBF
    end Back

    %---------------------------------------
    %---------------------------------------



    procedure copyFile
	copyFileName := fileName (objectNum)
	srcPath := Dir.Current
	srcPathName := srcPath + "/" + copyFileName
	statusPost ("Copy: " + copyFileName)
	copyStatus := 1
    end copyFile

    procedure cutFile
	copyFileName := fileName (objectNum)
	srcPath := Dir.Current
	srcPathName := srcPath + "/" + copyFileName
	statusPost ("Cut:" + srcPathName)
	copyStatus := 2
    end cutFile



    %Deletes a single file or folder
    procedure deleteFile
	const name : string := fileName (objectNum)
	const isFolder : boolean := Dir.Exists (name)
	var typeStr : string := "file"
	if isFolder then
	    typeStr := "folder"
	end if

	const vbAnswer : string := vbs.MessageBox ("Are you sure you want to permanently delete this " + typeStr + "?", 4, "!", 2, "Delete " + typeStr + " '" + name + "'?")
	if vbAnswer = "Yes" then
	    if isFolder then
		Dir.Delete (name)
	    else
		File.Delete (name)
	    end if
	    if Error.Last = eNoError then
		statusPost (capitalize (typeStr) + " Deleted.")
		refresh
	    else
		statusPost ("Failed to delete.    Error: " + Error.LastMsg)
	    end if
	else
	    statusPost (capitalize (typeStr) + " deletion canceled.")
	end if
    end deleteFile


    procedure FileCorupt (filePath : string)
	if File.Exists (filePath) then
	    statusPost ("Corrupting file... Please wait..")
	    var size, attribute, fileTime : int
	    File.Status (filePath, size, attribute, fileTime)
	    var fileNum : int
	    var data : nat1

	    open : fileNum, filePath, write
	    for i : 1 .. size
		data := Rand.Int (0, 255)
		write : fileNum, data
	    end for
	    close : fileNum
	else
	    statusPost ("Cannot Corupt a non-existent file.")
	end if

    end FileCorupt


    %Destroys a single file or folder
    %This means the file is coruped, then deleted
    procedure destroyFile
	const name : string := fileName (objectNum)
	const isFolder : boolean := Dir.Exists (name)
	var typeStr : string := "file"
	if isFolder then
	    typeStr := "folder"
	end if

	const vbAnswer : string := vbs.MessageBox ("WARNING! This will corupt the selected " + typeStr + " beyond repair or recovery. Are you sure you want to destroy this " + typeStr + "?", 4, "!",
	    2,
	    "Destroy " + typeStr + " '" + name + "'?")
	if vbAnswer = "Yes" then
	    if isFolder then
		Dir.Delete (name)
	    else
		FileCorupt (name)
		%File.Delete (name)
	    end if
	    if Error.Last = eNoError then
		statusPost (capitalize (typeStr) + " Destroyed.")
		refresh
	    else
		statusPost ("Failed to delete.    Error: " + Error.LastMsg)
	    end if
	else
	    statusPost (capitalize (typeStr) + " deletion canceled.")
	end if
    end destroyFile


    procedure pasteFile
	destPathName := Dir.Current + "/" + copyFileName
	if copyStatus = 1 then

	    statusPost ("Copying ....")


	    if Dir.Exists (srcPathName) then % Is it a folder (not a file)?
		Dir.Create (copyFileName)
	    elsif File.Exists (srcPathName) then % Is it a file?
		File.Copy (srcPathName, destPathName)
	    end if


	    if Error.Last = eNoError then
		statusPost ("File copied")
		refresh
	    else
		statusPost ("Copy failed. Error: " + Error.LastMsg)
	    end if
	elsif copyStatus = 2 then
	    statusPost ("Moving....")
	    File.Copy (srcPathName, destPathName)
	    if Error.Last = eNoError then


		File.Delete (copyFileName)
		if Error.Last = eNoError then
		    statusPost ("File moved")
		else
		    statusPost ("File moved but failed to delete.    Error: " + Error.LastMsg)
		end if
	    else
		statusPost ("Moving failed. Error: " + Error.LastMsg)
	    end if
	end if
	% refresh
	%copyStatus := 0
    end pasteFile

    proc pasteShortcutBtn
	if copyStatus = 1 then
	    statusPost ("Creating Shortcut.")
	    const shortcutFileName : string := copyFileName + ".lnk"
	    if File.Exists (shortcutFileName) then
		const vbAnswer : string := vbs.MessageBox ("The shortcut " + shortcutFileName + " aready exists in this folder. Do you want to overwrite it?", 4, "!", 2, "Overwrite Shortcut?")
		if vbAnswer = "Yes" then
		    statusPost ("Overwriting Shortcut.")
		else
		    statusPost ("Shortcut Canceled.")
		    return
		end if
	    end if

	    var description : string := vbs.InputBoxFull ("Enter an optional Shortcut Description:", "Shortcut Description", "Shortcut to " + copyFileName)
	    %var description : string :=InputBox.Show ("Enter a Shortcut Description:", "Shortcut", "Shortcut to " + copyFileName)
	    vbs.CreateShortcut (srcPath, copyFileName, Dir.Current, description)
	    DirListing
	    statusPost ("Shortcut Created")
	end if
    end pasteShortcutBtn



    %Open Folder
    procedure openDirectory (path : string)
	Dir.Change (path)
	DirListing
	GUI.SetText (AddressBar, Dir.Current)
	saveHistory
    end openDirectory


    %Up Directory
    procedure openPrivDir
	if Dir.Exists ("..") then
	    openDirectory ("..")
	else
	    showDrives
	end if
    end openPrivDir


    procedure openInExplorer
	%explorer /select,%Directory%\%file%

	statusPost ("Navigating to in Windows Explorer...")
	%Dir.Change (Dir.Current)
	if not Sys.Exec ("explorer /select, \".\\" + fileName (objectNum) + "\"") then
	    statusPost ("Failed to open in explorer")
	else
	    statusPost ("Successfully opened " + fileName (objectNum))
	end if

    end openInExplorer



    %Will execute a file with its defult program via the command prompt
    procedure execute (filePath : string)
	const fileName : string := splitAddress (filePath)
	statusPost ("Executing...")
	if not Sys.Exec ("cmd /C title " + fileName + " & Echo Exicuting....  & start \"Browser\" \"" + filePath + "\"") then
	    statusPost ("Could not execute " + fileName)
	else
	    statusPost ("Successfully executed " + fileName)
	end if
    end execute




    %Determins wether to open a file of Execute it based on its type
    %This prosedure is called when an entry is double clicked
    procedure openOrExecute (filePath : string)
	if Dir.Exists (filePath) then
	    %openNextDir
	    openDirectory (filePath)
	elsif File.Exists (filePath) then
	    execute (filePath)
	    %selectFile
	else
	    statusPost ("Invalid Path. Cannot execute.")
	end if
    end openOrExecute

    procedure openOrExecuteSelection (selection : int)
	openOrExecute (fileName (selection))
    end openOrExecuteSelection


    procedure enterAddress (text : string)
	if text = "My Computer" or text = "my computer" or text = "mycomputer" then
	    GUI.SetText (AddressBar, "My Computer")
	    Dir.Change ("C://")
	    showDrives
	    saveHistory
	else
	    openOrExecute (text)
	    % Dir.Change (text)
	    % DirListing
	    % saveHistory
	end if
    end enterAddress

    procedure goAddress
	enterAddress (GUI.GetText (AddressBar))
    end goAddress



    %True if it has the spesified extention
    function hasExt (fileName : string, extention : string) : boolean
	result Str.Lower (extExstract (fileName, true)) = Str.Lower (extention)
	%result index (fileName, "." + extention) not= 0
    end hasExt

    %sets lables on the screen for a selected file
    procedure entrySelected (selection : int)

	GUI.SetLabel (FileNameLabel, strLimitExact (fileName (selection), 170, propTableEntry_font))
	if File.Exists (fileName (selection)) then
	    GUI.SetLabel (extentionLabel, Str.Upper (extExstract (fileName (selection), true)))
	elsif Dir.Exists (fileName (selection)) then
	    GUI.SetLabel (extentionLabel, "DIR")
	else
	    GUI.SetLabel (extentionLabel, "")
	end if
	if index (fileName (selection), ":\\") not= 2 then
	    %Is a file or folder
	    GUI.SetLabel (sizeLabel, sizeStr (size (selection)))            %"   (" + intstr (size (selection)) + " bytes)"
	    GUI.SetLabel (fileTimeLabel, dateTimeStr (fileTime (selection)))
	    GUI.SetLabel (fileTypeLabel, fileType (selection))
	    GUI.SetLabel (fileAttributesLabel, fileAttributes (selection))
	else
	    %Is a root location (like a hardrive)
	    GUI.SetLabel (sizeLabel, "")
	    GUI.SetLabel (fileTimeLabel, "")
	    GUI.SetLabel (fileTypeLabel, "")
	    GUI.SetLabel (fileAttributesLabel, "")
	end if

	GUI.Enable (m2Copy)
	GUI.Enable (m2Delete)
	GUI.Enable (m2Rename)
	if copyStatus not= 0 then
	    GUI.Enable (m2Paste)
	    GUI.Enable (m2CopyLink)
	end if

	%----------------------
	%---Update File Icons---
	%----------------------

	const fName : string := fileName (selection)

	%Blank Slate to draw icon appon
	Pic.Draw (fileBlankPic, fileIconX, fileIconY, picCopy)

	if showDrivesStatus = 1 then
	    if fName = "A:\\" or fName = "B:\\" then
		Pic.Draw (floppyPic, fileIconX, fileIconY, picMerge)
	    else
		Pic.Draw (drivePic, fileIconX, fileIconY, picMerge)
	    end if
	else

	    %--------------------------\
	    %|   Bace File Type Icons   |
	    %--------------------------/


	    %Windows Directory Folder
	    if index (fileType (selection), "Folder") not= 0 then
		if File.Exists (fName + "\\Briefcase Database") then
		    Pic.Draw (EI.BriefcasePicID (), fileIconX, fileIconY, picMerge)
		else
		    Pic.Draw (folderPic, fileIconX, fileIconY, picMerge)
		end if


		%Instalation Program
	    elsif hasExt (fName, "msi") or
		    hasExt (fName, "msp") or
		    ((index (fName, "setup") not= 0 or index (fName, "install") not= 0) and hasExt (fName, "exe")) then
		Pic.Draw (EI.SetupPicID (), fileIconX, fileIconY, picMerge)

		%Executable Program
	    elsif index (fileType (selection), "Application") not= 0 or
		    hasExt (fName, "exe") or
		    hasExt (fName, "com") then
		Pic.Draw (EI.ExecPicID (), fileIconX, fileIconY, picMerge)

		%Batch Files
	    elsif hasExt (fName, "bat") or
		    hasExt (fName, "cmd") then
		Pic.Draw (EI.BatPicID (), fileIconX, fileIconY, picMerge)

		%Screen Saver
	    elsif hasExt (fName, "src") then
		Pic.Draw (EI.ScreenSaverPicID (), fileIconX, fileIconY, picMerge)

		%Fonts
	    elsif hasExt (fName, "fnt") or
		    hasExt (fName, "fon") or
		    hasExt (fName, "otf") or
		    hasExt (fName, "pfm") or
		    hasExt (fName, "ttc") or
		    hasExt (fName, "ttf") then
		Pic.Draw (EI.FontPicID (), fileIconX, fileIconY, picMerge)

		%System Files
	    elsif hasExt (fName, "dll") or
		    hasExt (fName, "cab") or
		    hasExt (fName, "cur") or
		    hasExt (fName, "dmp") or
		    hasExt (fName, "drv") or
		    hasExt (fName, "sys") or
		    hasExt (fName, "cpl") then
		Pic.Draw (EI.SysFilePicID (), fileIconX, fileIconY, picMerge)

		%Text Document
	    elsif hasExt (fName, "txt") or
		    hasExt (fName, "log") then
		Pic.Draw (EI.TextPicID (), fileIconX, fileIconY, picMerge)

		%Turing Source
	    elsif hasExt (fName, "t") or
		    hasExt (fName, "tur") then
		Pic.Draw (EI.TuringPicID (), fileIconX, fileIconY, picMerge)

		%Turing Source (Unit)
	    elsif hasExt (fName, "tu") then
		Pic.Draw (EI.TuringUnitPicID (), fileIconX, fileIconY, picMerge)

		%Turing Source (Include)
	    elsif hasExt (fName, "ti") then
		Pic.Draw (EI.TuringIncludePicID (), fileIconX, fileIconY, picMerge)

		%Turing Source (Demo)
	    elsif hasExt (fName, "dem") then
		Pic.Draw (EI.TuringDemoPicID (), fileIconX, fileIconY, picMerge)

		%C++ Source
	    elsif hasExt (fName, "cc") or
		    hasExt (fName, "cpp") or
		    hasExt (fName, "cxx") then
		Pic.Draw (EI.CppPicID (), fileIconX, fileIconY, picMerge)
		%C Source
	    elsif hasExt (fName, "cod") then
		Pic.Draw (EI.CPicID (), fileIconX, fileIconY, picMerge)

		%vbScript
	    elsif hasExt (fName, "vbs") or
		    hasExt (fName, "vbe") or
		    hasExt (fName, "wsf") then
		Pic.Draw (EI.VbsPicID (), fileIconX, fileIconY, picMerge)

		%Php Script
	    elsif hasExt (fName, "php") then
		Pic.Draw (EI.PHPPicID (), fileIconX, fileIconY, picMerge)

		%JavaScript
	    elsif hasExt (fName, "js") or
		    hasExt (fName, "java") then
		Pic.Draw (EI.JsPicID (), fileIconX, fileIconY, picMerge)

		%Java JAR compressed archive execuatble
	    elsif hasExt (fName, "jar") then
		Pic.Draw (EI.JarPicID (), fileIconX, fileIconY, picMerge)

		%Flv Flash Document
	    elsif hasExt (fName, "fla") or
		    hasExt (fName, "xfl") then
		Pic.Draw (EI.FlaPicID (), fileIconX, fileIconY, picMerge)
		%Flv Flash Video
	    elsif hasExt (fName, "flv") then
		Pic.Draw (EI.FlvPicID (), fileIconX, fileIconY, picMerge)
		%SWF Flash Movie
	    elsif hasExt (fName, "swf") then
		Pic.Draw (EI.SWFPicID (), fileIconX, fileIconY, picMerge)
		%flash Action Script
	    elsif hasExt (fName, "as") or
		    hasExt (fName, "asc") then
		Pic.Draw (EI.ASPicID (), fileIconX, fileIconY, picMerge)

		%website Shortcut
	    elsif hasExt (fName, "website") or
		    hasExt (fName, "url") then
		Pic.Draw (EI.IE_LinkPicID (), fileIconX, fileIconY, picMerge)

		%XML Based Scripts
	    elsif hasExt (fName, "xml") or
		    hasExt (fName, "htm") or
		    hasExt (fName, "html") or
		    hasExt (fName, "htmls") or
		    hasExt (fName, "xht") or
		    hasExt (fName, "xhtml") then
		Pic.Draw (EI.XmlScriptPicID (), fileIconX, fileIconY, picMerge)

		%Compressed Zip Archive
	    elsif hasExt (fName, "zip") or
		    hasExt (fName, "z") or
		    hasExt (fName, "tar") or
		    hasExt (fName, "tar.gz") or
		    hasExt (fName, "tgz") then
		Pic.Draw (EI.ZipPicID (), fileIconX, fileIconY, picMerge)

		%WinRar Archive
	    elsif hasExt (fName, "rar") then
		Pic.Draw (EI.WinRarPicID (), fileIconX, fileIconY, picMerge)

		%ISO Disk Image
	    elsif hasExt (fName, "iso") then
		Pic.Draw (EI.ISOPicID (), fileIconX, fileIconY, picMerge)

		%Bit Torrent
	    elsif hasExt (fName, "torrent") then
		Pic.Draw (EI.TorrentPicID (), fileIconX, fileIconY, picMerge)

		%Photoshop Image
	    elsif hasExt (fName, "psd") then
		Pic.Draw (EI.PSDPicID (), fileIconX, fileIconY, picMerge)

		%Ilustrator Graphics
	    elsif hasExt (fName, "ai") then
		Pic.Draw (EI.AiPicID (), fileIconX, fileIconY, picMerge)

		%After Effects Project
	    elsif hasExt (fName, "aep") or
		    hasExt (fName, "aet") then
		Pic.Draw (EI.AfterEffectsPicID (), fileIconX, fileIconY, picMerge)

		%Adobe Encore DVD Project
	    elsif hasExt (fName, "ncor") then
		Pic.Draw (EI.AdobeEncorePicID (), fileIconX, fileIconY, picMerge)

		%Premire Pro Project
	    elsif hasExt (fName, "prproj") then
		Pic.Draw (EI.PrProjPicID (), fileIconX, fileIconY, picMerge)

		%Windows Movie Maker Project
	    elsif hasExt (fName, "mswmm") then
		Pic.Draw (EI.MswmmPicID (), fileIconX, fileIconY, picMerge)

		%Windows DVD Maker Project
	    elsif hasExt (fName, "msdvd") then
		Pic.Draw (EI.MsdvdPicID (), fileIconX, fileIconY, picMerge)

		%XSI Scene
	    elsif hasExt (fName, "scn") then
		Pic.Draw (EI.XsiPicID (), fileIconX, fileIconY, picMerge)


		%Loadable Image File
	    elsif hasExt (fName, "jpg") or
		    hasExt (fName, "jpeg") or
		    hasExt (fName, "bmp") then
		Pic.Draw (EI.PhotoPicID (), fileIconX, fileIconY, picMerge)
		%Load an image thumbnail
		const tmpPicID : int := Pic.FileNew (fName)
		if Error.Last = eNoError then
		    Draw.FillBox (fileIconX + 4, fileIconY + 5, fileIconX + 43, fileIconY + 35, 29)     %Pic Fill
		    const tempThumbID : int := autoPicScale (tmpPicID, 30) %Pic.Scale (tmpPicID, 39, 30)
		    const oW : int := Pic.Width (EI.PhotoPicID ())
		    const oH : int := Pic.Height (EI.PhotoPicID ())
		    const nW : int := Pic.Width (tempThumbID)
		    const nH : int := Pic.Height (tempThumbID)
		    Pic.Free (tmpPicID)
		    Pic.Draw (tempThumbID, fileIconX + ceil ((oW / 2) - (nW / 2)), fileIconY + ceil ((oH / 2) - (nH / 2)) + 1, picCopy)
		    Pic.Free (tempThumbID)
		    Draw.Box (fileIconX + 4, fileIconY + 5, fileIconX + 43, fileIconY + 35, 20) %Pic Outline
		end if
		%Image File
	    elsif hasExt (fName, "png") or
		    hasExt (fName, "tif") or
		    hasExt (fName, "tiff") or
		    hasExt (fName, "targa") then
		Pic.Draw (EI.PhotoPicID (), fileIconX, fileIconY, picMerge)

		%Graphic File
	    elsif hasExt (fName, "gif") or
		    hasExt (fName, "ico") or
		    hasExt (fName, "icon") then
		Pic.Draw (EI.GraphicPicID (), fileIconX, fileIconY, picMerge)

		%Audio/music File
	    elsif hasExt (fName, "mp3") or
		    hasExt (fName, "wav") or
		    hasExt (fName, "wma") or
		    hasExt (fName, "cda") or
		    hasExt (fName, "aif") or
		    hasExt (fName, "aiff") or
		    hasExt (fName, "aac") or
		    hasExt (fName, "adt") or
		    hasExt (fName, "mid") or
		    hasExt (fName, "midi") or
		    hasExt (fName, "flac") or
		    hasExt (fName, "ram") then
		Pic.Draw (EI.MusicFilePicID (), fileIconX, fileIconY, picMerge)

		%Video File
	    elsif hasExt (fName, "avi") or
		    hasExt (fName, "wmv") or
		    hasExt (fName, "mpg") or
		    hasExt (fName, "mpe") or
		    hasExt (fName, "mpeg") or
		    hasExt (fName, "mp1") or
		    hasExt (fName, "mp2") or
		    hasExt (fName, "mp4") or
		    hasExt (fName, "divx") then
		Pic.Draw (EI.VideoPicID (), fileIconX, fileIconY, picMerge)

		%QuickTime Video File
	    elsif hasExt (fName, "qt") or
		    hasExt (fName, "qtl") or
		    hasExt (fName, "mqv") or
		    hasExt (fName, "mod") or
		    hasExt (fName, "mpa") or
		    hasExt (fName, "mov") or
		    hasExt (fName, "moov") then
		Pic.Draw (EI.QuickTimePicID (), fileIconX, fileIconY, picMerge)

		%PDF Document
	    elsif hasExt (fName, "pdf") then
		Pic.Draw (EI.PDFPicID (), fileIconX, fileIconY, picMerge)

		%Word 2003+ Processing Document
	    elsif hasExt (fName, "docx") then
		Pic.Draw (EI.DocXPicID (), fileIconX, fileIconY, picMerge)

		%Power point Document
	    elsif hasExt (fName, "ppt") then
		Pic.Draw (EI.PowerPointPicID (), fileIconX, fileIconY, picMerge)

		%Word Processing Document (MS Word)
	    elsif hasExt (fName, "doc") or
		    hasExt (fName, "docm") or
		    hasExt (fName, "dotx") or
		    hasExt (fName, "dot") or
		    hasExt (fName, "wps") or
		    hasExt (fName, "rtf") or
		    hasExt (fName, "odt") or
		    hasExt (fName, "wpd") or
		    hasExt (fName, "wp") then
		Pic.Draw (EI.DocPicID (), fileIconX, fileIconY, picMerge)

		%Excell Spreed Sheet Document
	    elsif hasExt (fName, "xlsx") or
		    hasExt (fName, "xls") or
		    hasExt (fName, "xlm") or
		    hasExt (fName, "xlt") or
		    hasExt (fName, "xla") or
		    hasExt (fName, "xlb") or
		    hasExt (fName, "xld") or
		    hasExt (fName, "xlk") or
		    hasExt (fName, "xll") or
		    hasExt (fName, "xlv") or
		    hasExt (fName, "xlw") then
		Pic.Draw (EI.ExcelPicID (), fileIconX, fileIconY, picMerge)

		%Mail File
	    elsif hasExt (fName, "eml") then
		Pic.Draw (EI.MailPicID (), fileIconX, fileIconY, picMerge)

		%Help File
	    elsif hasExt (fName, "chm") then
		Pic.Draw (EI.HelpFilePicID (), fileIconX, fileIconY, picMerge)

		%Security Certificate
	    elsif hasExt (fName, "ctr") or
		    hasExt (fName, "cer") or
		    hasExt (fName, "der") then
		Pic.Draw (EI.CertificatePicID (), fileIconX, fileIconY, picMerge)

		%Generic File
	    elsif index (fileType (selection), "File") not= 0 then
		Pic.Draw (EI.FilePicID (), fileIconX, fileIconY, picMerge)
	    end if

	    %----------------------\
	    %|   Tack-On symbols   |
	    %----------------------/

	    %Gear - For System Files
	    if index (fileType (selection), "System") not= 0 then
		Pic.Draw (EI.GearPicID (), fileIconX + 17, fileIconY - 10, picMerge)
	    end if
	    %Go to arrow - For Windows Shortcuts
	    if hasExt (fName, "lnk") then
		Pic.Draw (EI.ShortcutPicID (), fileIconX, fileIconY, picMerge)
	    end if


	end if

	objectNum := selection
    end entrySelected

    procedure listClicked (selection : int, finnalChoice : boolean)
	if selection = 0 then
	    %List is empty (fail safe)
	    vbs.NoticeWait ("There is nothing in the list to select.", "!", "List Empty")
	    return
	end if

	if finnalChoice then
	    %Double Clicked (entered)
	    openOrExecuteSelection (selection)
	else
	    %Single Clicked (selected)
	    entrySelected (selection)
	end if
    end listClicked

    %Opens or executes currently selected item in list
    procedure openOrExecuteCurrent
	openOrExecuteSelection (objectNum)
    end openOrExecuteCurrent



    procedure stripIncromentFromName (var name : string)
	%Detects and strips existing incroment from file name (stops stacking)
	const b1Index := indexR (name, "(")
	const b2Index := indexR (name, ")")
	if b1Index > 0 and b2Index > b1Index + 1 then
	    const tempCut := name (b1Index + 1 .. b2Index - 1)
	    if strintok (tempCut) then
		var newName : string := ""
		%Numbers string patter found
		newName := Str.Trim (name (1 .. b1Index - 1))
		if b2Index < length (name) then
		    newName += name (b2Index + 1 .. length (name))
		end if
		name := newName
	    end if
	end if
    end stripIncromentFromName

    procedure renameFile
	GUI.Disable (m2Rename)
	statusPost ("Re-Naming File")

	var oldName : string := fileName (objectNum)
	var newName : string := oldName
	var tmpNewName : string
	var newNum : int
	var isFolder : boolean := Dir.Exists (oldName)

	loop
	    newName := Str.Trim (InputBox.Show ("Enter a new file name bellow.", "Re-Name", newName))
	    exit when newName = "" or newName = oldName %Canceled
	    exit when not (File.Exists (newName) or Dir.Exists (newName))

	    stripIncromentFromName (newName)
	    %Incroment the name with a uniqe number
	    newNum := 2
	    loop
		if isFolder then
		    tmpNewName := newName + " (" + intstr (newNum) + ")"
		    if not Dir.Exists (tmpNewName) then
			newName := tmpNewName
			exit
		    else
			newNum += 1
		    end if
		else
		    tmpNewName := extExstract (newName, false) + " (" + intstr (newNum) + ")." + extExstract (newName, true)
		    if not File.Exists (tmpNewName) then
			newName := tmpNewName
			exit
		    else
			newNum += 1
		    end if
		end if
	    end loop
	end loop

	if newName = "" or newName = oldName then
	    statusPost ("Rename Canceled")
	else
	    File.Rename (Dir.Current + "\\" + oldName, newName)

	    if Error.Last = eNoError then
		DirListing %Refresh the listing
		statusPost ("File Renamed to: " + newName)
	    else
		statusPost ("Re-name Failed.")
		delay (1000)
		statusPost ("Error: " + Error.LastMsg)
	    end if
	end if
	GUI.Enable (m2Rename)
    end renameFile


    %function incromentNameIfExists

    procedure createFolder
	statusPost ("Creating New Folder")

	var newNum : int
	var folderName : string := "New Folder"
	loop
	    stripIncromentFromName (folderName)
	    %Incroment the name with a uniqe number
	    if Dir.Exists (folderName) then
		newNum := 2
		loop
		    if not Dir.Exists (folderName + " (" + intstr (newNum) + ")") then
			folderName := folderName + " (" + intstr (newNum) + ")"
			exit
		    else
			newNum += 1
		    end if
		end loop
	    end if

	    %Create Folder Diolog
	    folderName := Str.Trim (InputBox.Show ("Enter a new folder name bellow.", "New Folder", folderName))
	    exit when not Dir.Exists (folderName)
	    exit when folderName = "" %Canceled
	end loop

	if folderName = "" then
	    statusPost ("New Folder Canceled.")
	else
	    Dir.Create (folderName)
	    if Error.Last = eNoError then
		DirListing %Refresh the isting
		statusPost ("New Folder Created.")
	    else
		statusPost ("Did not create folder.")
		delay (1000)
		statusPost ("Error: " + Error.LastMsg)
	    end if
	end if
    end createFolder

    %Creates an empty text file and mimics the Dir.Create function
    procedure FileCreate (fileName : string)
	var fileNum : int
	open : fileNum, fileName, put
	close : fileNum
    end FileCreate

    procedure createFile
	statusPost ("Creating New File")

	var newNum : int
	var fileName : string := "New Text Document.txt"
	var newFileName : string
	loop
	    stripIncromentFromName (fileName)
	    %Incroment the name with a uniqe number

	    if File.Exists (fileName) then
		newNum := 2
		loop
		    newFileName := extExstract (fileName, false) + " (" + intstr (newNum) + ")." + extExstract (fileName, true)
		    if not File.Exists (newFileName) then
			fileName := newFileName
			exit
		    else
			newNum += 1
		    end if
		end loop
	    end if

	    %Create File Diolog
	    fileName := Str.Trim (InputBox.Show ("Enter a new file name bellow.", "New File", fileName))
	    exit when not File.Exists (fileName)
	    exit when fileName = "" %Canceled
	end loop

	if fileName = "" then
	    statusPost ("New File Creation Canceled.")
	else
	    FileCreate (fileName)
	    if Error.Last = eNoError then
		DirListing %Refresh the isting
		statusPost ("New File Created.")
	    else
		statusPost ("Did not create new file.")
		delay (1000)
		statusPost ("Error: " + Error.LastMsg)
	    end if
	end if
    end createFile


    procedure copyAddressBarToClipboard
	vbs.Copy (GUI.GetText (AddressBar))
    end copyAddressBarToClipboard

    procedure pasteClipboardToAddressBar
	GUI.SetText (AddressBar, vbs.Paste ())
    end pasteClipboardToAddressBar


    %Goto Navigation buttons
    proc gotoMyComputerBtn
	showDrives
    end gotoMyComputerBtn

    proc gotoDesktopBtn
	openDirectory (DesktopPath)
    end gotoDesktopBtn
    proc gotoMyDocsBtn
	openDirectory (myDocsPath)
    end gotoMyDocsBtn
    proc gotoMyVideosBtn
	openDirectory (myVideosPath)
    end gotoMyVideosBtn
    proc gotoMyPicturesBtn
	openDirectory (myPicturesPath)
    end gotoMyPicturesBtn
    proc gotoMyMusicBtn
	openDirectory (myMusicPath)
    end gotoMyMusicBtn

    proc gotoProgramRootBtn
	openDirectory (programRoot)
    end gotoProgramRootBtn



    proc browserDialogBtn
	statusPost ("Browsing with Windows Folder Dialog")
	var folderPath : string := vbs.Browser ("")
	if folderPath = "null" then
	    statusPost ("Browse Dialog Cancelled")
	else
	    if not Dir.Exists (folderPath) then
		%Link windows special location keys to Browser keys
		case folderPath of
			%my Computer
		    label "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}" :
			showDrives
			return
			%folderPath := "My Computer"
		    label :
			const tmp := vbs.InputBoxFull ("The following invalid directory was returned", "not valid", folderPath)
		end case
	    end if
	    openDirectory (folderPath)
	end if
    end browserDialogBtn



    proc aboutPage_Btn
	About.Show
    end aboutPage_Btn





    %--------------------------------------------------------------
    %---- Gui Widgit Inasalization Procedures----------------------
    %--------------------------------------------------------------

    procedure inisiateAddressBarFrame (x, y, w : int)
	% The parameters directly corespond to the adress
	% bar gui and all other widgits are ancored onto the address bar.
	const b : int := y - 3 %A base line to align all button
	AddressBar := GUI.CreateTextFieldFull (x, y, w, Dir.Current, enterAddress, GUI.INDENT, 0, 0)
	const copyAddressBtn := GUI.CreatePictureButton (x + w + 4, b, copy16xPic, copyAddressBarToClipboard)
	const pasteAddressBtn := GUI.CreatePictureButton (x + w + 25, b, paste16xPic, pasteClipboardToAddressBar)
	goPicButton := GUI.CreatePictureButton (x + w + 55, b, goPic, goAddress)
	%openInExplorerButton := GUI.CreatePictureButton ((x + w) - 120, y - 30, openLocBtnPic, openInExplorer)
    end inisiateAddressBarFrame

    procedure inisiateDirectoryListFrame (x, y : int)
	%Settings
	const width : int := 300
	const height : int := 123
	const labelFrame_Width : int := 100
	const labelFrame_Height : int := 20

	const topY : int := y + height

	upDirButton := GUI.CreatePictureButton (x - 1, topY, upDirPic, openPrivDir)
	refreshButton := GUI.CreatePictureButton (x + 115, topY, refreshPic, refresh_Btn)
	backButton := GUI.CreatePictureButton (x + 205, topY, arrowLPic, Back)
	forwardButton := GUI.CreatePictureButton (x + 225, topY, arrowRPic, Forward)

	var btnLabel : int %Non movable button lable ID
	btnLabel := GUI.CreateLabelFull (x + 35, topY + 2, "Up Directory", x + 147, topY + 27, GUI.LEFT + GUI.BOTTOM, standard10)
	btnLabel := GUI.CreateLabelFull (x + 152, topY + 2, "Refresh", x + 200, topY + 27, GUI.LEFT + GUI.BOTTOM, standard10)
	btnLabel := GUI.CreateLabelFull (x + 248, topY + 2, "Forward", x + 300, topY + 27, GUI.LEFT + GUI.BOTTOM, standard10)
	btnLabel := GUI.CreateLabelFull (x + 205, topY + 21, "Back", x + 300, topY + 27, GUI.LEFT + GUI.BOTTOM, standard10)


	%Bottom Left corner of lable
	const lX : int := (x + width) - labelFrame_Width
	const lY : int := y - labelFrame_Height

	Draw.FillBox (lX, lY, x + width, y - 1, backColor) %back drop for oject count
	Draw.Box (lX, lY, x + width, y, black) %oject count boarder
	fileCountLabel := GUI.CreateLabelFull (lX, lY + 2, "0 Objects", labelFrame_Width, labelFrame_Height, GUI.CENTER + GUI.MIDDLE, 0)
	DirectoryList := GUI.CreateTextBoxChoice (x, y, width, height, 0, 0, 30, black, 173, listClicked)
    end inisiateDirectoryListFrame

    procedure inisiatePropertiesFrame (x, y : int)
	%Settings
	const frameLabel : string := "Properties"
	const lineColor : int := darkgrey
	const backgroundColor : int := backColor
	const width : int := 253
	const height : int := 85
	const marginX : int := 10
	const marginY : int := 12
	const columWidth : int := 60 %Table
	%Lables
	const labelNames : array 1 .. * of string := init (
	    "Size", "Created", "Type", "Access")

	const lableCount : int := upper (labelNames)
	var tableLableID : array 1 .. lableCount of int

	%Calculated Table Vars
	const tableStartY : int := height - (marginY * 2) %Y pos of the tables top left corner
	const rowHeight : int := (tableStartY) div lableCount %Calculated height of a table row
	var rY : int := y + marginY + tableStartY %Global Y Position of row line
	var rX : int := x + marginX             %Global Left X Positions of row line
	var rXX : int := x + width - marginX    %Global Right X Positions of row line

	%Draws Frame
	Draw.FillBox (x, y, x + width, y + height + 3, backgroundColor)
	var propFrame : int := GUI.CreateLabelledFrame (x, y, x + width, y + height, GUI.EXDENT, frameLabel)
	%Draws Table Boundry Lines
	Draw.Line (rX, rY, rXX, rY, lineColor) %Draws top line
	Draw.Line (rX + columWidth, rY, rX + columWidth, y + marginY, lineColor) %Colum Line
	%Draws Table Rows
	for i : 1 .. lableCount
	    %Row Calculations
	    rY := y + marginY + tableStartY - (rowHeight * i)
	    rX := x + marginX
	    rXX := x + width - marginX
	    %Draws Rows
	    Draw.Line (rX, rY, rXX, rY, lineColor)
	    const tmpID := GUI.CreateLabelFull (rX, rY + 2, labelNames (i), columWidth, rowHeight, GUI.CENTER + GUI.MIDDLE, 0)
	    tableLableID (i) := GUI.CreateLabelFull (rX + columWidth + marginX, rY + 2, "Put " + labelNames (i) + " here.", width - (columWidth + (marginX * 2)), rowHeight, GUI.LEFT + GUI.MIDDLE,
		propTableEntry_font)
	end for


	%Export Table Value LableIDs
	%save array value into respective global lableID var
	for i : 1 .. lableCount
	    case i of
		    %label 1 :
		    % FileNameLabel := tableLableID (i)
		    %been moved to a input feild
		label 1 :
		    sizeLabel := tableLableID (i)
		label 2 :
		    fileTimeLabel := tableLableID (i)
		label 3 :
		    fileTypeLabel := tableLableID (i)
		label 4 :
		    fileAttributesLabel := tableLableID (i)
	    end case
	end for
    end inisiatePropertiesFrame



    procedure inisiateStatusFrame ()
	%Settings
	const width : int := maxx
	const height : int := 15
	const leftMargin : int := 48
	const rightMargin : int := 48
	const topMargin : int := 2
	const bottomMargin : int := 1
	const lineShade1 : int := 28 %Dark grey
	const lineShade2 : int := 29 %light Grey
	const fontShade : int := 30 %light Grey

	%Y location accounting for the margerin inset
	const innerY : int := height - topMargin
	%back drop for status label
	%Draw.FillBox (0, bottomMargin, width, innerY, backColor)
	%Left Divider Notch
	Draw.Line (leftMargin, bottomMargin, leftMargin, innerY, lineShade1)
	Draw.Line (leftMargin + 1, bottomMargin, leftMargin + 1, innerY, lineShade2)
	%Right Divider Notch
	Draw.Line (width - rightMargin, bottomMargin, width - rightMargin, innerY, lineShade1)
	Draw.Line (width - rightMargin + 1, bottomMargin, width - rightMargin + 1, innerY, lineShade2)

	const messageLabelName : int := GUI.CreateLabelFull (0, 2, "Status", leftMargin, height, GUI.CENTER + GUI.MIDDLE, standard10)
	messageLabel := GUI.CreateLabelFull (leftMargin + 5, 2, "", width - (leftMargin + rightMargin), height, GUI.LEFT + GUI.MIDDLE, 0)
	extentionLabel := GUI.CreateLabelFull (width - rightMargin, 2, "N/A", rightMargin, height, GUI.CENTER + GUI.MIDDLE, standard10)

    end inisiateStatusFrame

    %For Menu Creation
    proc doNothing
	GUI.Disable (GUI.GetEventWidgetID)
	statusPost ("Feature Not Available.")
    end doNothing
    proc menuDivider ()
	const divider : int := GUI.CreateMenuItem ("---", doNothing)
    end menuDivider


    %Main Program--------------------------------------------------------------------------------------------------

    procedure Inisalize

	windowID := Window.Open ("nobuttonbar,title:" + title + ", position:top;center,graphics:352;416") %,graphics:352;416

	GUI.SetBackgroundColor (backColor)
	Pic.Draw (backgroundSkin, 0, 0, picCopy)

	%Pic.ScreenLoad ("RoughOut.jpg", 0, 0, picCopy)



	%File Menu Items (Menu 1)
	m1 := GUI.CreateMenu ("File")
	m1Open := GUI.CreateMenuItem ("Open/Execute", openOrExecuteCurrent)
	m1Refresh := GUI.CreateMenuItem ("Refresh", refresh_Btn)
	menuDivider %---
	m1Browse := GUI.CreateMenuItem ("Browse Dialog", browserDialogBtn)
	m1OpenLoc := GUI.CreateMenuItem ("Open Location", openInExplorer)
	menuDivider %---
	m1Exit := GUI.CreateMenuItem ("Exit", GUI.Quit)

	%Edit Menu Items (Menu 2)
	m2 := GUI.CreateMenu ("Edit")
	m2Copy := GUI.CreateMenuItem ("Copy", copyFile)
	m2Paste := GUI.CreateMenuItem ("Paste", pasteFile)
	m2CopyLink := GUI.CreateMenuItem ("Paste Shortcut", pasteShortcutBtn)
	menuDivider %---
	m2Rename := GUI.CreateMenuItem ("Rename", renameFile)
	menuDivider %---
	m2NewFolder := GUI.CreateMenuItem ("New Folder", createFolder)
	m2NewFile := GUI.CreateMenuItem ("New File", createFile)
	menuDivider %---
	m2Delete := GUI.CreateMenuItem ("Delete File", deleteFile)

	%Navigation Menu Items (Menu 3)
	m3 := GUI.CreateMenu ("Goto")
	m3MyComputer := GUI.CreateMenuItem ("My Computer", gotoMyComputerBtn)
	m3Desktop := GUI.CreateMenuItem ("Desktop", gotoDesktopBtn)
	m3MyDocuments := GUI.CreateMenuItem ("My Documents", gotoMyDocsBtn)
	menuDivider %---
	m3MyPictures := GUI.CreateMenuItem ("My Pictures", gotoMyPicturesBtn)
	m3MyMusic := GUI.CreateMenuItem ("My Music", gotoMyMusicBtn)
	m3MyVideos := GUI.CreateMenuItem ("My Videos", gotoMyVideosBtn)
	menuDivider %---
	m3ProgRoot := GUI.CreateMenuItem ("Root", gotoProgramRootBtn)

	%View Menu Items (Menu 4)
	m4 := GUI.CreateMenu ("View")
	m4ShowStatusLog := GUI.CreateMenuItem ("Show Status Log", toggelStatusLogVisability)
	m4HideStatusLog := GUI.CreateMenuItem ("Hide Status Log", toggelStatusLogVisability)
	GUI.Disable (m4HideStatusLog)

	%Help Menu Items (Menu 9 - will always be the last menu)
	m9 := GUI.CreateMenu ("Help")
	m9SysInfo := GUI.CreateMenuItem ("System Info", SysInfo.Show)
	m9About := GUI.CreateMenuItem ("About", aboutPage_Btn)




	%Main Widgits
	inisiateAddressBarFrame (47, maxy - 53, maxx - 135)
	inisiateDirectoryListFrame (24, 190)
	inisiatePropertiesFrame (22, 70)
	inisiateStatusFrame


	%Buttons
	/* Disabled for mini browser
	 copyButton := GUI.CreatePictureButton (370, 245, copyBtnPic, copyFile)
	 pasteButton := GUI.CreatePictureButton (390, 195, pasteBtnPic, pasteFile)
	 renameButton := GUI.CreatePictureButton (528, 275, renameBtnPic, renameFile)
	 newFileButton := GUI.CreatePictureButton (528, 200, newFileBtnPic, createFile)
	 deleteButton := GUI.CreatePictureButton (528, 175, deleteFileBtnPic, deleteFile)
	 */

	SelectButton := GUI.CreatePictureButton (235, 34, OkBtnPic, selectFile)
	CancelButton := GUI.CreatePictureButton (292, 34, CancelBtnPic, GUI.Quit)
	Draw.FillBox (10, 35, 222, 56, backColor)
	FileNameLabel := GUI.CreateLabelFull (10, 37, "", 213, 21, GUI.MIDDLE + GUI.CENTER, 0)

	%SelectButton := GUI.CreateButton (480, 22, 140, "Select File/Folder", selectFile)
	%CancelButton := GUI.CreateButton (370, 22, 80, "Cancel", GUI.Quit)

	%Inishalize GUI widgits
	dialogMessage := GUI.CreateLabelFull (5, 30, "", 20, 65, GUI.TOP, 0)


	%------------------
	statusPost (title + " Inisalized on " + dateStr (0))

	DirListing
	saveHistory

    end Inisalize




    function Show (startPath : string) : string %Main
	GUI.ResetQuit
	drawWindowScreen

	var newFilePath : string := startPath
	var Original_DirCurrent : string := Dir.Current %Remember Original Program Dir

	Inisalize


	openDirectory (startPath)
	statusPost (title + " Ready.")

	%Test message text
	%dialogMessage := GUI.CreateLabelFull (5, 30, message, 20, 65, GUI.TOP, 0)

	loop

	    processStatusWindow

	    if Window.GetActive not= windowID and not Window.GetActive = -5 then
		Window.SetActive (windowID) %Sets Diolog Active
		windowsDing
		windowShake (windowID)
	    else
		exit when GUI.ProcessEvent
		exit when fileSelected
	    end if
	end loop
	statusPost (title + " Terminated.")


	if fileSelected then %Clicked OK
	    newFilePath := Dir.Current + "/" + fileName (objectNum)
	    /*var itemName : string := GUI.GetText (FileNameLabel)
	     if itemName not= "" then
	     newFilePath := Dir.Current + "/" + itemName
	     else
	     newFilePath := Dir.Current
	     end if
	     */
	end if

	Dir.Change (Original_DirCurrent) %Revert Original Program Dir
	fileSelected := false

	statusPost ("") %stops status post from auto posting after window gone.
	%Turn of staus log
	if statusLogVisible then
	    toggelStatusLogVisability
	end if
	%Closes the window and Disposed of all GUI Wigits in it
	GUI.CloseWindow (windowID)
	removeWindowScreen

	%Return Result
	result newFilePath

    end Show

    procedure Quit
	GUI.Quit
	QUIT := true
	vbs.Quit
    end Quit


    %____________________________________
    %____________________________________\_________
    %____________| Change Log |____________________\
    %________________________________________/
    /*


     September 26 2010
     Version 13

     -Embeded Images Moduel encoperated (with RGB Suport)


     July 21 2011
     Version 14

     -Started The Change Log
     -Included several of my General purpose modules
     >preSetScreen.tu
     >gui2.tu

     -My Computer's Properties now shows blank properties for hardrives instead of showing incorect infor from the last files loaded.
     -Copy/Paste now suports copying empty folders
     -added more icon graphics
     >turing, bat, execuatble, text, shortcut


     )

     %____________________________________
     %____________________________________\
     %____________________________________/
     */




end FileBrowse
