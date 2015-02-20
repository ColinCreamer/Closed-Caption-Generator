/*
 -----Closed Caption Generator------

 Created By Colin Creamer
 Janary 30 2012

 Description:
 This tool will generate synchronized closed caption files for use with YouTube.

 Input:
 -   An MP3 or wav file with the exact soundtrack of the video
 -   A text file with the words. Each cluster you want to
 display at a time on a new line

 Output:   A closed caption text file with in and out time codes.


 Instructions:
 1. Browse to the audio file.
 2. Browse to source text file.
 3. Choose a destination for your Closed Caption file. (optional)
 4. Choose a name for your Closed Caption file. (optional)
 5. Press Start
 6. As the soundtrack plays, press and hold the space bar
 while the line of text displayed is being spoken,
 and release when finished speaking that chunk.
 7. Repeat step 4 for all text chunks displayed.
 8. Closed caption file complete When the soundtrack finished for you click Finished.

 */


/*------------------------
 ---------Imports----------
 --------------------------*/

import (GUI,
    "Modules/preSetScreen.tu",
    "Modules/VBS module Simplified",
    "Modules/ShaddyUI.tu",
    "Modules/Sort.tu",
    "Modules/WinEventGrab.tu",
    "Modules/VersionControl/VC.tu",
    "Modules/AppTracker.tu",

%Interface Windows
    "Modules/WindowUIs/InputBox.ti",
    "Modules/WindowUIs/About.ti",
    "Modules/FileBrowse/FileBrowse.tu",
    "Modules/Pages/GenPage.ti",

%Embedded Images
    "Modules/EI Library/EI_Manager.tu"
    )




/*----------------------------------------
 -----------Global Variables---------------
 ------------------------------------------*/

%Files and folders
const notSetText : string := "Not Set"
var soundTrackFile : string := notSetText
var sourceTextFile : string := notSetText
var destFolder : string := Dir.Current ()
var outputFileName : string := "Closed-Caption.txt"

%generic
%var DEBUG : boolean := false
var EXIT : boolean := false     %Indicates when to halt program


%Versioning
VC.SetVersion (0, 3, 8, "Beta")
const app : string := "CapGen"
const version : string := VC.GetVersionStrFull ()
const writer : string := "Richard Colin Creamer"


About.SetAppName (app)
About.SetVersion ("Version " + version)
put app + " v" + version
Tracker.SetApp (app)
%Don't report build number if running from editor
if VC.InIDE () then
    Tracker.SetVer (VC.GetCustomVerStr (3, false))
else
    Tracker.SetVer (VC.GetCustomVerStr (4, false))
end if
Tracker.SetOS (vbs.GetOS ())


%Buttons
var updateBtn : int

%Initialise Fonts ----

var font : int
font := Font.New ("Arial:9")
assert font > 0

var font_address : int
font_address := Font.New ("Arial:8")
assert font_address > 0

/*--------------------------------------------
 -----------Functions/Procedures---------------
 ------------------------------------------*/


procedure doNothing
end doNothing


procedure updateHandler
    %SUI.UnHide (updateBtn)
    % SUI.Hide (updateBtn)

    %Check if update version is newer
    if Sort.CompareIndexStr (Tracker.GetNewVer (), ">", Tracker.GetVer ()) then
	%titleMessage ("Update " + Tracker.GetNewVer () + " Found!", 5)
	SUI.UnLock (updateBtn)
	SUI.SetText (updateBtn, "Update Available!")
	SUI.SetFontColor (updateBtn, yellow)


    end if
end updateHandler

%UpdateVars
var downloadMonitor_Interval : int := 0
var downloadMonitor_Elapsed : int := 0
%var dowloadingUpdate : boolean := false
var updateQueryID : int
const uState_UpToDate : int := 0
const uState_Available : int := 1
const uState_Downloading : int := 2
const uState_Downloaded : int := 3
var uState : int := uState_Available     %Update State
procedure startUpdate

    case uState of
	    %label uState_UpToDate :
	    %donothing
	label uState_Available :
	    %Download the update
	    const url : string := Tracker.GetUpdateUrl ()
	    if vbs.MessageBox ("Update: " + Tracker.GetNewVer () + "\nCurrent: " + Tracker.GetVer (), 4, "?", 1, "Downolad Update?") = "Yes" then
		%Download the Update
		updateQueryID := vbs.Download (url, Dir.Current)
		if updateQueryID = -1 then
		    return
		end if
		uState := uState_Downloading
	    end if
	label uState_Downloading :
	    sound (300, 50)
	label uState_Downloaded :

	    %Launch New Version
	    vbs.RunHiddenCommand ("start \"\" \"" + vbs.DownloadName (updateQueryID) + "\"")
	    %Exit Current version
	    EXIT := true
    end case

    %titleMessage ("Downloading " + vbs.DownloadName (updateQueryID) + ". Please wait...  Esc", 5)
    %end if

end startUpdate

procedure updateDownloadMonitor
    if uState = uState_Downloading then
	if Time.Elapsed > downloadMonitor_Elapsed then
	    downloadMonitor_Elapsed := Time.Elapsed + 500
	    %Downloading animation
	    downloadMonitor_Interval += 1
	    if downloadMonitor_Interval > 3 then
		downloadMonitor_Interval := 0
	    end if
	    SUI.SetText (updateBtn, "Downloading" + repeat (".", downloadMonitor_Interval))

	    %Watch for download for completion
	    if vbs.DownloadComplete (updateQueryID) then
		%titleMessage ("Download Complete ", 5)
		SUI.SetText (updateBtn, "Done!")
		delay (700)
		uState := uState_Downloaded
		SUI.SetText (updateBtn, "Launch")
		SUI.SetFontColor (updateBtn, brightgreen)

	    end if
	end if
    end if
end updateDownloadMonitor


%----------------------------------------
%-----Load Graphics----------------------
%----------------------------------------
var backgroundPicID, backgroundOverflowCoverPicID : int

proc loadImageGraphics

    Pic.Draw (EI.IDbyName ("Main Page.bmp"), 0, 0, picCopy)
    %Pic.ScreenLoad ("Main-Page.jpg", 0, 0, picCopy)

    Pic.Draw (EI.IDbyName ("Title.bmp"), 37, 372, picMerge)
    Pic.Draw (EI.IDbyName ("Author.bmp"), 130, 350, picMerge)
    Pic.Draw (EI.IDbyName ("InputPannel.bmp"), 30, 216, picMerge)
    Pic.Draw (EI.IDbyName ("InputPannel.bmp"), 30, 92, picMerge)

    backgroundPicID := Pic.New (0, 0, maxx, maxy)
    Pic.Draw (backgroundPicID, 0, 0, picCopy)
    %-------------------
    %Simple fix to stop text overflow out of text field area
    %(piece of background image drawn overtop)
    %Pic.Draw (backgroundPicID, 0, 0, picCopy)
    backgroundOverflowCoverPicID := Pic.New (313, 0, maxx, maxy)
    %backgroundTextCoverPicID := Pic.New (159, 210, maxx - 54, 400)
    %------------------
end loadImageGraphics

procedure drawLables
    Pic.Draw (backgroundPicID, 0, 0, picCopy)
    %Pic.Draw (backgroundTextCoverPicID, 159, 210, picCopy)
    Draw.Text (soundTrackFile, 44, 245, font_address, darkgrey)
    Draw.Text (sourceTextFile, 44, 222, font_address, darkgrey)
    Draw.Text (destFolder, 44, 120, font_address, darkgrey)
    Draw.Text (outputFileName, 44, 97, font_address, darkgrey)

    %a left hand cover to stop text from showing outside of the designated text area
    Pic.Draw (backgroundOverflowCoverPicID, maxx + 1 - Pic.Width (backgroundOverflowCoverPicID), 0, picCopy)
end drawLables


%Extracts an extension from the filename or removes it
function extExstract (filename : string, returnExtension : boolean) : string
    for decreasing i : length (filename) .. 1
	if filename (i) = "." then
	    if returnExtension then
		result filename (i + 1 .. *)     %returns extension
	    else
		result filename (1 .. i - 1)     %returns file name
	    end if
	end if
    end for
    %No extension found.. return filename
    result filename
end extExstract

%Slices up a string variable and returns each slice one piece at a time
function sliceStrByDelim (var stringToSplit : string, deliminator : string) : string
    var splitPart : string
    const splitPoint : int := index (stringToSplit, deliminator)
    if splitPoint = 0 then
	%returns last segment
	splitPart := stringToSplit
	stringToSplit := ""
    else
	%Cut off next segment
	splitPart := stringToSplit (1 .. splitPoint - 1)
	stringToSplit := stringToSplit (splitPoint + 1 .. length (stringToSplit))
    end if
    splitPart := Str.Trim (splitPart)     %Remove white spaces
    result splitPart
end sliceStrByDelim


%separate each filter entry with a semicolon (;)
%   Each entry will be an accepted file extension.
%   If no entry added, all valid files and folders will be accepted
%   Special Entries:
%       ~folders: accept bare folder paths
%       ~files: accept all file types
%

function fileFilter (path, filterStr : string) : boolean
    if filterStr = "" then
	result Dir.Exists (path) or File.Exists (path)
    end if

    %convert filter string into array
    var splitFilterTemp : string := filterStr
    var filterArray : flexible array 1 .. 1 of string
    for i : 1 .. length (filterStr)
	new filterArray, i
	filterArray (i) := sliceStrByDelim (splitFilterTemp, ";")
    end for

    var ext : string
    if File.Exists (path) then
	ext := Str.Lower (extExstract (path, true))
    end if

    for i : 1 .. upper (filterArray)
	if filterArray (i) = "~folders" then
	    if Dir.Exists (path) then
		result true
	    end if
	elsif filterArray (i) = "~files" then
	    if File.Exists (path) then
		result true
	    end if
	end if

	if File.Exists (path) then
	    if filterArray (i) = ext then
		result true
	    end if
	end if
    end for
    %vbs.NoticeWait ("The path entered is not valid file or folder:", "x", "Invalid Path")
    result false
end fileFilter


%---------------------------
%-------Button Actions------
%---------------------------

%Validation Type Values:
const VT_FileOrFolder : int := 0     %default
const VT_FileOnly : int := 1
const VT_FolderOnly : int := 2


%Validates Return From vbs.Browser
function browser (title : string, oldPath : string) : string
    loop
	var temp : string := vbs.Browser (title)
	if temp = "null" then
	    result oldPath     %passes on old path
	end if
	if not Dir.Exists (temp) then
	    vbs.NoticeWait ("The selected directory is not valid:", "x", "Invalid folder")
	else
	    result temp     %returns new path
	end if
    end loop
end browser

%Validates Return From vbs.Inputbox

function inputBoxPath (title : string, oldPath : string, validationType : int) : string
    var typeString : string := "folder of file"
    if validationType = VT_FileOnly then
	typeString := "file"
    elsif validationType = VT_FolderOnly then
	typeString := "folder"
    end if
    loop
	var temp : string := vbs.InputBoxFull ("Enter a " + typeString + " path.", title, oldPath)
	if temp = "" or temp = notSetText then
	    result oldPath     %passes on old path
	end if


	%Validates result
	if validationType = VT_FileOnly then
	    if File.Exists (temp) then
		result temp                 %returns new path
	    else
		vbs.NoticeWait ("The path entered is not a file:", "x", "Invalid file path")
	    end if
	elsif validationType = VT_FolderOnly then
	    if Dir.Exists (temp) then
		result temp     %returns new path
	    else
		vbs.NoticeWait ("The folder entered is not valid:", "x", "Invalid folder path")
	    end if
	else     %validationType = VT_FileOrFolder
	    if Dir.Exists (temp) or File.Exists (temp) then
		result temp     %returns new path
	    else
		vbs.NoticeWait ("The path entered is not valid file or folder:", "x", "Invalid Path")
	    end if
	end if

    end loop
end inputBoxPath

%Validates Return From browse module (only until the module supports validating)
function browserModValidate (oldPath : string, validationType : int) : string
    loop
	var temp : string := FileBrowse.Show (oldPath)
	if temp = oldPath or temp = notSetText then
	    result oldPath     %passes on old path
	end if
	%Validates result
	if validationType = VT_FileOnly then
	    if File.Exists (temp) then
		result temp                 %returns new path
	    else
		vbs.NoticeWait ("The selected path is not a file:", "x", "Invalid file path")
	    end if
	elsif validationType = VT_FolderOnly then
	    if Dir.Exists (temp) then
		result temp     %returns new path
	    else
		vbs.NoticeWait ("The selected path is not a valid folder:", "x", "Invalid folder Path")
	    end if
	else     %validationType = VT_FileOrFolder
	    if Dir.Exists (temp) or File.Exists (temp) then
		result temp     %returns new path
	    else
		vbs.NoticeWait ("The selected path is not valid file or folder:", "x", "Invalid Path")
	    end if
	end if
    end loop
end browserModValidate



procedure browseDesPath
    destFolder := browserModValidate (destFolder, VT_FolderOnly)
    %destFolder := FileBrowse.Show (destFolder)
    %destFolder := browser ("Destination Path", destFolder)
    drawLables
end browseDesPath
proc inputDesPath
    destFolder := inputBoxPath ("Destination Path", destFolder, VT_FolderOnly)
    drawLables
end inputDesPath

procedure setSourceAudio_Btn
    soundTrackFile := browserModValidate (soundTrackFile, VT_FileOnly)
    if not (fileFilter (soundTrackFile, "mp3;wav") or soundTrackFile = notSetText) then
	vbs.NoticeWait ("Must be MP3 or WAV file.", "x", "Unsupported File type")
	soundTrackFile := notSetText

    end if
    %soundTrackFile := FileBrowse.Show (soundTrackFile)
    drawLables
end setSourceAudio_Btn
proc inputSourceAudio
    soundTrackFile := inputBoxPath ("Source Audio File Path", soundTrackFile, VT_FileOnly)
    if not (fileFilter (soundTrackFile, "mp3;wav") or soundTrackFile = notSetText) then
	vbs.NoticeWait ("Must be MP3 or WAV file.", "x", "Unsupported File type")
	soundTrackFile := notSetText
    end if
    drawLables
end inputSourceAudio

procedure setSourceText_Btn
    sourceTextFile := browserModValidate (sourceTextFile, VT_FileOnly)
    %sourceTextFile := FileBrowse.Show (sourceTextFile)
    drawLables
end setSourceText_Btn
proc inputSourceText
    sourceTextFile := inputBoxPath ("Source Text File Path", sourceTextFile, VT_FileOnly)
    drawLables
end inputSourceText

procedure setOutputName
    %Text Input Dialog
    outputFileName := InputBox.Show ("Set your Closed Caption File Name.", "Change File Name", outputFileName)

    %No Extension? Add .txt
    if index (outputFileName, ".") = 0 then
	outputFileName += ".txt"
    end if


    %Redraw the labels
    drawLables
end setOutputName

procedure exitProgram
    %if vbs.MessageBox ("Are you sure you want to abort the import picture process?", 4, "?", 1, "Exit?") = "Yes" then
    EXIT := true
    %end if
end exitProgram


procedure beginProcess
    if soundTrackFile = notSetText or sourceTextFile = notSetText or destFolder = notSetText then
	vbs.NoticeWait ("Some values have not been set. Please set all values.", "!", "Unset values")
	return
    end if
    GenPage.Set (soundTrackFile, sourceTextFile, destFolder, outputFileName)
    GenPage.Show ()
end beginProcess


 /*--------------------------------------------
 -----------Main Program Loop--------------------
 ------------------------------------------*/

setscreen ("title:Closed Caption Generator, nobuttonbar,offscreenonly")





%----Declare Buttons-----
var sourceAudio_Btn := SUI.New (42, 265, 120, 28, "Source Audio", 10, black, 126, 78, setSourceAudio_Btn)
const sourceAudioInputBoxBtn := SUI.New (146, 265, 16, 28, ":_", 8, black, 125, 77, inputSourceAudio)
var sourceText_Btn := SUI.New (190, 265, 120, 28, "Source Text", 10, black, 126, 78, setSourceText_Btn)
const sourceTextInputBoxBtn := SUI.New (294, 265, 16, 28, ":_", 8, black, 125, 77, inputSourceText)


var destination_Btn := SUI.New (42, 141, 120, 28, "Destination", 10, black, 126, 78, browseDesPath)
const dPathInputBoxBtn := SUI.New (146, 141, 16, 28, ":_", 8, black, 125, 77, inputDesPath)
var fileName_Btn := SUI.New (190, 141, 120, 28, "File Name", 10, black, 126, 78, setOutputName)

var start_Btn := SUI.New (202, 19, 124, 33, "Begin", 20, black, green, brightgreen, beginProcess)


%File Menu like button strip
const strip : int := SUI.New (0, maxy - 18, maxx, 18, repeat ("…", 148), 8, black, black, black, doNothing)
SUI.Lock (strip)
const aboutBtn : int := SUI.New (26, maxy - 18, 40, 18, "About", 8, white, black, red, About.Show)
updateBtn := SUI.New ((maxx div 2) - 50, maxy - 18, 100, 18, "No Updates", 8, white, black, red, startUpdate)
%SUI.Hide (updateBtn)
SUI.Lock (updateBtn)
const exitBtn : int := SUI.New (maxx - 45, maxy - 18, 40, 18, "Exit", 8, white, black, red, exitProgram)




WinEventGrab.SetExit (exitProgram)
Tracker.LinkUpdateProcedure (updateHandler)     %Update Call

if VC.InIDE () and false then
    put "Debug Auto ON (developer)"
    %SUI.Debug
    Tracker.DebugOn
else
    put "Checking for Updates..."
    View.Update
    Tracker.Report ()
end if


loadImageGraphics
drawLables

loop
    updateDownloadMonitor     %monitors when update download in progress
    SUI.processSUI
    View.Update
    exit when WinEventGrab.ProcessEvent ()
    exit when Tracker.ProcessEvent ()
    exit when EXIT
end loop

%Ensure all process have quit
EXIT := true
vbs.Quit
WinEventGrab.Quit ()
Tracker.Quit ()
