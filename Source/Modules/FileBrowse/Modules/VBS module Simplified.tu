%Turing VBS collection - VBS module.tu
%Written By: Colin Creamer

%last modified : December 23 2008
%last Modified: October 9 2009
%last Modified: August 27-30 2010
%last Modified: Febuary 23 2011
%last Modified: April 18 2011
%last Modified: July 24 2011
%last Modified: August 2 2011

%---BREEF DESCRIPTIION---
%This module contains a large variety of useful functions and procedures
%That integrates the Visual Basics Scripting language into Turing to allow
%for features that otherwise would be impossible using Turing alone.


/*
 VBS SIMPLIFIED

 Conatins no VNS Safe mode.. background proseses or rigerouse temporary folder seraching
 Desined to be more reliable, assuming the user has a C:drive   (99.9% of windows OSs do...)

 ---IMPROVED FEATURES---
 bitOS ()
 bacicGatherInfo()
 GatherInfo()
 runScript()
 SendKeys()

 SendKeysText() %modifiers disabled
 exitQuotes() %this protects scripts from injection errors
 RunHiddenCommand()
 RunHiddenBatch()
 CopyMultiple()

 these should be trancfered over to other vbs moduel versions?
 */

unit
module vbs

    %---Exported VBS Module Procedures and functions --------------------
    export MessageBox, msgBox, msgBoxP, Notice, NoticeWait,
	Browser, BrowserP,
	EjectRom, LoadRom, GatherRomInfo, GetDefultRom, GetRom, NumOfRoms,
	Copy, CopyMultiple, Paste,
	SendKeys, SendKeysText,
	InputBoxFull, InputBox,
	CreateShortcutFull, CreateShortcut,
	Speach, SpeachWait,
	GetOS, GetOSNum, GetOSFull,
	Download,
	RunHiddenCommand, RunHiddenBatch,
    %misc
	GetWindowsOpen, Quit


    %-------------------------------------------------------------------
    %-----Global VBS Module Variables-----------------------------------
    %-------------------------------------------------------------------

    var vbsID : int := Rand.Int (1, 100) * 100 %allows more than one vbs script to be open at a time without files being overwritten
    var windowsOpen : int := 0 %keeps track of the number of vbs windows open
    var QUIT : boolean := false

    const scriptHost : string := "C:\\Windows\\System32\\Wscript.exe"

    const tmpFolder : string := "vbsModuleTmp"
    const windowsTemp : string := "C:\\Windows\\Temp"

    var rootPath : string           %root path for vbs temporary folder
    var tmpFolderPath : string := windowsTemp + "\\" + tmpFolder  %Full folder path of VBS temporary folder

    if not Dir.Exists (tmpFolderPath) then
	Dir.Create (tmpFolderPath)
    end if

    %Rom Info
    var RomCount : int := 0
    var RomLetter : array 1 .. 24 of string

    %Gather Info
    var Info_OS, Info_OSNum : string





    %--------------------------------------------------------------------------
    %--------------------------------------------------------------------------
    %----- Tool Functions and prodedures --------------------------------------
    %--------------------------------------------------------------------------
    %--------------------------------------------------------------------------


    %Recreation of the str_replace PHP Function
    %Param Order: replace this, with, from
    function str_replace (replaceThis : string, replaceWith : string, sourceStr : string) : string
	var newStr : string := ""
	var strLeft : string := sourceStr
	var rIndex : int
	loop
	    rIndex := index (strLeft, replaceThis)
	    if rIndex > 0 then
		newStr += strLeft (1 .. rIndex - 1) + replaceWith
		strLeft := strLeft (rIndex + length (replaceThis) .. *)
	    else
		result newStr + strLeft
	    end if
	end loop
    end str_replace


    %Protects VBS scripts from injection errors from user input
    %Will Replace all Quots with ExitQuotes to stop the string from exiting prematurly
    function exitQuotes (userStr : string) : string
	%Replace " with ""
	result str_replace ("\"", "\"\"", userStr)
    end exitQuotes

    %--------------------------------------------------------------------------
    %--------------------------------------------------------------------------
    %-----Commonly uses vbs Code Segments---------------------------------------
    %--------------------------------------------------------------------------
    %--------------------------------------------------------------------------


    %This VBS spinet makes the vbs file self delete when executed

    procedure vbsDeleteSelfCode (fileNo : int, VBSFileName : string)
	put : fileNo, "dim filesys, demofile"
	put : fileNo, "set filesys = CreateObject (\"Scripting.FileSystemObject\")"
	put : fileNo, "set demofile = filesys.CreateTextFile (\"" + tmpFolderPath + "\\" + VBSFileName + "\", true)"
	put : fileNo, "set demofile = filesys.GetFile(\"" + tmpFolderPath + "\\" + VBSFileName + "\")"
	put : fileNo, "demofile.Delete"
    end vbsDeleteSelfCode


    %This spinet prepares the return txt file needed for VBS functions to return data to turring
    %To later write text to this prepared file in VBS use the following line of code
    %objTextFile.WriteLine("text goes here")

    procedure vbsWriteFileS (fileNo : int, VBSReturnName : string)
	%Creating return text file
	put : fileNo, "Dim objFSO, objFolder, objShell, objTextFile, objFile"
	put : fileNo, "Dim strDirectory, strFile, strText"
	put : fileNo, "strDirectory = \"" + tmpFolderPath + "\""
	put : fileNo, "strFile = \"/" + VBSReturnName + "\""
	put : fileNo, "Set objFSO = CreateObject(\"Scripting.FileSystemObject\")"
	put : fileNo, "Set objFolder = objFSO.GetFolder(strDirectory)"
	put : fileNo, "Set objFile = objFSO.CreateTextFile(strDirectory & strFile)"
	%writeing to return text file
	put : fileNo, "set objFile = nothing"
	put : fileNo, "set objFolder = nothing"
	put : fileNo, "Const ForAppending = 8"
	put : fileNo, "Set objTextFile = objFSO.OpenTextFile _"
	put : fileNo, "(strDirectory & strFile, ForAppending, True)"
    end vbsWriteFileS

    %Returns the next avalable ID
    %(prevents confilct if mutiple programs are using vbs moduel)
    function nextVBSID (scriptName : string) : int
	vbsID += 1
	loop
	    delay (Rand.Int (1, 20))
	    if File.Exists (tmpFolderPath + "\\" + scriptName + intstr (vbsID) + ".vbs") then
		vbsID += 1
	    else
		delay (Rand.Int (1, 20))
		if File.Exists (tmpFolderPath + "\\" + scriptName + intstr (vbsID) + "Ret.txt") then
		    vbsID += 1
		else
		    result vbsID
		end if
	    end if
	end loop
    end nextVBSID


    procedure runScript (script : string)
	%Exicutes the VBS File
	var returnValue : int     %determins its sucsess
	system (scriptHost + " " + script, returnValue)
    end runScript





    %--vbs Run, Return and Delete---
    %This snippet is the basic Execution and cleanup code to be used on most vbs
    %functions in this module. It first run the freshly created VBS script,
    %then waits for it to create a return file at which point it reads, and then deletes
    %all temporary files

    function vbsRRD (fileNo2 : int, VBSFileName : string, VBSReturnName : string) : string
	var returnStr : string := ""
	var fileNo : int := fileNo2
	%insures files were deleted the last time
	if File.Exists (tmpFolderPath + "\\" + VBSReturnName) then
	    File.Delete (tmpFolderPath + "\\" + VBSReturnName)
	end if
	%Exicutes the VBS File
	runScript (tmpFolderPath + "\\" + VBSFileName)
	loop
	    if File.Exists (tmpFolderPath + "\\" + VBSReturnName) then
		delay (50)
		open : fileNo, tmpFolderPath + "\\" + VBSReturnName, get
		if not eof (fileNo) then
		    get : fileNo, returnStr : *
		end if
		close : fileNo
		exit
	    end if
	    delay (100)
	end loop
	%cleans up temporary file
	File.Delete (tmpFolderPath + "\\" + VBSReturnName)

	result returnStr
    end vbsRRD


    %--------------------------------------------------------------------------
    %-----------END OF VBS CODE SEGMENTS---------------------------------------
    %--------------------------------------------------------------------------

    var VBSSafeMode : boolean := false




    %--------------------------------------------------------------------------
    %--------------------------------------------------------------------------
    %-------VBS Module Functions and Procedures--------------------------------
    %--------------------------------------------------------------------------
    %--------------------------------------------------------------------------

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %              INVISIBLE COMMAND LINE SHELL              %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %Runs a spesified batch file in a invisible VBS shell
    procedure RunHiddenBatch (batchFile : string)
	const VBSID : int := nextVBSID ("runBatchHidden")          %creates private ID num

	var fileNum : int
	var VBSFileName : string := "runBatchHidden" + intstr (VBSID) + ".vbs"
	var VBSFilePath : string := tmpFolderPath + "\\" + VBSFileName

	%Make Bat Launcher
	open : fileNum, VBSFilePath, put
	put : fileNum, "Set WshShell = CreateObject(\"WScript.Shell\")"
	put : fileNum, "        WshShell.Run chr(34) & \"" + batchFile + "\" & Chr(34), 0"
	put : fileNum, "        Set WshShell = Nothing"
	vbsDeleteSelfCode (fileNum, VBSFileName)
	put : fileNum, "WScript.Quit"
	close : fileNum

	%Launch VBS Script
	runScript (VBSFilePath)
    end RunHiddenBatch

    %Runs a comand line command in the background
    procedure RunHiddenCommand (command : string)
	var fileNo : int
	const batFileName : string := "hiddenCommand.bat"
	const batFilePath : string := tmpFolderPath + "\\" + batFileName
	%make a single command bat file
	open : fileNo, batFilePath, put
	put : fileNo, command
	put : fileNo, "del " + batFileName
	close : fileNo
	%Runs the batch file through an invisible vbs shell
	RunHiddenBatch (batFilePath)
    end RunHiddenCommand




    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                      MESSAGE BOX                       %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    %Visual Basic Script Message Box Module for Turing
    %Written by:Colin Creamer
    %Date: July 29 2008
    %Some VBS Source taken from: Guy Thomas http://computerperformance.co.uk/
    %VBS Source: Version 1.5 - August 2005

    function MessageBox (message : string, buttons : int, icon : string, DButton : int, title : string) : string

	if QUIT then
	    result "null"
	end if
	const VBSID : int := nextVBSID ("messBox")     %creates private ID num
	windowsOpen += 1
	%configures the message box type
	var boxType : int := 0
	case buttons of
	    label 0, 1, 2, 3, 4, 5 :
		boxType += buttons
	    label :
		put "invalid buttons (0-5)"
		boxType += 0
	end case
	const ICON := Str.Lower (icon)

	case ICON of
	    label "x" :
		boxType += 16
	    label "?" :
		boxType += 32
	    label "!" :
		boxType += 48
	    label "i" :
		boxType += 64
	    label :
		%no icon
	end case
	case DButton of
	    label 1 :
		%boxType += 0
	    label 2 :
		boxType += 256
	    label 3 :
		boxType += 512
	    label 4 :
		boxType += 768
	    label :
		% put "invalid Defult button (1-4)"
		%boxType += 0
	end case

	%writes the VBS file
	var fileNo : int
	var VBSFileName : string := "messBox" + intstr (VBSID) + ".vbs"
	var VBSReturnName : string := "messBox" + intstr (VBSID) + "Ret.txt"
	var intAnswer : int
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put
	put : fileNo, "Option Explicit"
	put : fileNo, "dim answer"
	put : fileNo, "answer=MsgBox(\"" + exitQuotes (message) + "\"," + intstr (boxType) + ",\"" + exitQuotes (title) + "\")"
	vbsWriteFileS (fileNo, VBSReturnName)
	put : fileNo, "objTextFile.WriteLine(answer)"     %write line
	%close up
	put : fileNo, "objTextFile.Close"
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo

	%Run Return and Delete VBS script
	intAnswer := strint (vbsRRD (fileNo, VBSFileName, VBSReturnName))

	%converts integer answer into a string
	windowsOpen -= 1
	if QUIT then
	    result "null"
	end if
	case intAnswer of
	    label 1 :
		result "OK"
	    label 2 :
		result "Cancel"
	    label 3 :
		result "Abort"
	    label 4 :
		result "Retry"
	    label 5 :
		result "Ignore"
	    label 6 :
		result "Yes"
	    label 7 :
		result "No"
	end case
    end MessageBox


    %----Quick shortcut versions of MessageBox-----

    %short form
    function msgBox (message : string, buttons : int, icon : string, DButton : int, title : string) : string
	result MessageBox (message, buttons, icon, DButton, title)
    end msgBox

    %message box process
    process msgBoxProcess (message : string, buttons : int, icon : string, DButton : int, title : string, actionProc : procedure p (address : string))
	var answer : string := MessageBox (message, buttons, icon, DButton, title)
	actionProc (answer)
    end msgBoxProcess

    %launch message box process
    procedure msgBoxP (message : string, buttons : int, icon : string, DButton : int, title : string, actionProc : procedure p (address : string))
	delay (150)     %prevents crashes  from spam
	fork msgBoxProcess (message, buttons, icon, DButton, title, actionProc)
    end msgBoxP

    process NoticeProcess (message : string, icon : string, title : string)
	delay (150)        %prevents crashes  from spam
	var answer : string := MessageBox (message, 0, icon, 1, title)
    end NoticeProcess

    procedure Notice (message : string, icon : string, title : string)
	fork NoticeProcess (message, icon, title)
    end Notice

    procedure NoticeWait (message : string, icon : string, title : string)
	var answer : string := MessageBox (message, 0, icon, 1, title)
    end NoticeWait

    %-------------------------------------------------



    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                    INPUT BOX DIALOG                    %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %Visual Basic Script Input Box function for Turing
    %Written by:Colin Creamer
    %August 28 2010


    function InputBoxFull (message : string, title : string, defultText : string) : string

	const VBSID : int := nextVBSID ("inputBox")      %creates private ID num

	var fileNo : int
	var VBSFileName : string := "inputBox" + intstr (VBSID) + ".vbs"
	var VBSReturnName : string := "inputBox" + intstr (VBSID) + "Ret.txt"

	%writes the VBS file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put
	put : fileNo, " textFeild = InputBox(\"" + exitQuotes (message) + "\",\"" + exitQuotes (title) + "\",\"" + exitQuotes (defultText) + "\")"
	vbsWriteFileS (fileNo, VBSReturnName)
	put : fileNo, "objTextFile.WriteLine(textFeild)"     %write line
	%closes files and vbs
	put : fileNo, "objTextFile.Close"
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo

	%Run Return and Delete VBS script
	var retStr : string := vbsRRD (fileNo, VBSFileName, VBSReturnName)

	%returns old value if cancelled
	if retStr = "" then
	    result defultText
	else
	    result retStr
	end if
    end InputBoxFull


    %Simplified Peramiters
    function InputBox (message : string, title : string) : string
	result InputBoxFull (message, title, "")
    end InputBox





    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                    BROWSER DIALOG                      %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %Visual Basic Script Browser function for Turing
    %Written by:Colin Creamer
    %September 30 2008

    function Browser (message : string) : string

	if QUIT then
	    result "null"
	end if
	windowsOpen += 1
	const VBSID : int := nextVBSID ("vbBrowse")    %creates private ID num
	var fileNo : int
	var VBSFileName : string := "vbBrowse" + intstr (VBSID) + ".vbs"
	var VBSReturnName : string := "vbBrowse" + intstr (VBSID) + "Ret.txt"
	%writes the VBS file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put
	%browser portion
	put : fileNo, "Set objShell = CreateObject(\"Shell.Application\")"
	put : fileNo, "Set objFolder = objShell.BrowseForFolder _"
	put : fileNo, " (0, \"" + exitQuotes (message) + ":\", 0)"
	%checks if folder was chosen
	put : fileNo, "If (Not objFolder Is Nothing) Then"
	put : fileNo, "Set objFolderItem = objFolder.Self"
	put : fileNo, "strPath = objFolderItem.Path"
	put : fileNo, "else"
	put : fileNo, "strPath = \"null\""
	put : fileNo, "end if"
	vbsWriteFileS (fileNo, VBSReturnName)
	put : fileNo, "objTextFile.WriteLine(strPath)"     %write line
	%closes files and vbs
	put : fileNo, "objTextFile.Close"
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo

	%Run Return and Delete VBS script
	var returnStr : string := vbsRRD (fileNo, VBSFileName, VBSReturnName)


	%converts file path into Turing format
	var finnalStr : string := ""
	for i : 1 .. length (returnStr)
	    if returnStr (i) = "\\" then
		finnalStr += "/"
	    else
		finnalStr += returnStr (i)
	    end if
	end for

	%returns the path address to the function
	windowsOpen -= 1
	if QUIT then
	    result "null"
	end if
	result finnalStr
    end Browser

    %browser process
    process BrowserProcess (message : string, actionProc : procedure p (address : string))
	var address : string := Browser (message)
	actionProc (address)
    end BrowserProcess

    %lanches broser prosess
    procedure BrowserP (message : string, actionProc : procedure p (address : string))
	delay (150)     %prevents crashes  from spam
	fork BrowserProcess (message, actionProc)
    end BrowserP


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                 ROM EJECTION CONTROL                   %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %Colin Creamer
    %September 30 2008

    procedure romControle (driveLetter : string, loadDisk : boolean)
	var fileNo : int
	var VBSFileName : string
	var DriveLetter : string := Str.Upper (driveLetter)

	%Create VBS file name
	if loadDisk then
	    VBSFileName := "load" + DriveLetter
	else
	    VBSFileName := "eject" + DriveLetter
	end if

	const VBSID : int := nextVBSID (VBSFileName)
	VBSFileName += intstr (VBSID) + ".vbs"


	%Cross reference Driveleter to find rom ID num
	var RomID : int
	if RomCount > 0 then
	    for i : 1 .. RomCount
		if RomLetter (i) = DriveLetter then
		    RomID := i - 1
		    exit
		end if
	    end for
	end if
	%Write vbs file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put
	put : fileNo, "Set oWMP = CreateObject(\"WMPlayer.OCX.7\")"
	put : fileNo, "Set colCDROMs = oWMP.cdromCollection"
	if loadDisk then
	    if not Dir.Exists (driveLetter + ":\\") then
		put : fileNo, "colCDROMs.Item(" + intstr (RomID) + ").Eject"
		put : fileNo, "colCDROMs.Item(" + intstr (RomID) + ").Eject"
	    end if
	else
	    put : fileNo, "colCDROMs.Item(" + intstr (RomID) + ").Eject"
	end if
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo

	%Exicutes the VBS File
	runScript (tmpFolderPath + "\\" + VBSFileName)

    end romControle

    procedure EjectRom (driveLetter : string)
	romControle (driveLetter, false)
    end EjectRom

    procedure LoadRom (driveLetter : string)
	romControle (driveLetter, true)
    end LoadRom


    procedure GatherRomInfo


	const VBSID : int := nextVBSID ("findRoms")         %creates private ID num

	var fileNo : int
	var VBSFileName : string := "findRoms" + intstr (VBSID) + ".vbs"
	var VBSReturnName : string := "findRoms" + intstr (VBSID) + "Ret.txt"

	%writes the VBS file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put
	vbsWriteFileS (fileNo, VBSReturnName)
	%finding Roms letters to wirte to file
	put : fileNo, "Dim fs 'As Scripting.FileSystemObject"
	put : fileNo, "Const CDROM = 4"
	put : fileNo, "On Error Resume Next"
	put : fileNo, "Set fs = CreateObject(\"Scripting.FileSystemObject\")"
	put : fileNo, "For intDriveLetter = Asc(\"A\") To Asc(\"Z\")"
	put : fileNo, "Err.Clear"
	put : fileNo, "If fs.GetDrive(Chr(intDriveLetter)).DriveType = CDROM Then"
	put : fileNo, "If Err.Number = 0 Then"
	put : fileNo, "objTextFile.WriteLine(Chr(intDriveLetter))"         %writes line
	put : fileNo, "End If"
	put : fileNo, "End If"
	put : fileNo, "Next"
	%closes files and vbs
	put : fileNo, "objTextFile.Close"
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo
	%insures files were deleted the last time
	if File.Exists (tmpFolderPath + "\\" + VBSReturnName) then
	    File.Delete (tmpFolderPath + "\\" + VBSReturnName)
	end if
	%Exicutes the VBS File
	runScript (tmpFolderPath + "\\" + VBSFileName)

	loop
	    if File.Exists (tmpFolderPath + "\\" + VBSReturnName) then
		delay (50)
		open : fileNo, tmpFolderPath + "\\" + VBSReturnName, get
		RomCount := 0
		loop
		    exit when eof (fileNo)
		    RomCount += 1
		    get : fileNo, RomLetter (RomCount)
		end loop
		close : fileNo
		exit
	    end if
	    %delay (100)
	end loop
	%cleans up temporary file
	File.Delete (tmpFolderPath + "\\" + VBSReturnName)

    end GatherRomInfo

    %Runs once on firts related call
    var GatherRomInfoDone : boolean := false
    procedure GatherRomInfo_RunOnce
	if not GatherRomInfoDone then
	    GatherRomInfoDone := true
	    GatherRomInfo
	end if
    end GatherRomInfo_RunOnce

    function GetDefultRom : string
	GatherRomInfo_RunOnce
	if RomCount > 0 then
	    result RomLetter (1)
	else
	    result ""
	end if
    end GetDefultRom

    function GetRom (RomNum : int) : string
	GatherRomInfo_RunOnce
	if RomCount > 0 then
	    if RomNum <= RomCount and RomNum > 0 then
		result RomLetter (RomNum)
	    else
		result ""
	    end if
	else
	    result ""
	end if
    end GetRom

    function NumOfRoms : int
	GatherRomInfo_RunOnce
	result RomCount
    end NumOfRoms



    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %              WINDOWS CLIPBOARD INTERFACE               %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %Colin Creamer
    %August 27 2010


    %writes a string to the windows clipboard
    procedure Copy (text : string)
	RunHiddenCommand ("cmd /C  echo " + text + " | CLIP")
    end Copy

    %Writes Mutiple lines of text to the windows clipboard
    procedure CopyMultiple (textLine : array 1 .. * of string)
	var fileNo : int
	const clipFileName : string := "toClipboard" + intstr (Rand.Int (1, 999)) + ".txt"
	const clipFilePath : string := tmpFolderPath + "\\" + clipFileName
	%writes the Clipboard text file
	open : fileNo, clipFilePath, put
	for i : 1 .. upper (textLine)
	    put : fileNo, textLine (i)
	end for
	close : fileNo

	RunHiddenCommand ("cmd /C CLIP < " + clipFilePath)

    end CopyMultiple



    %reads a string from the windows clipboard
    function Paste () : string

	const VBSID : int := nextVBSID ("readClipboard")      %creates private ID num


	var fileNo : int
	var VBSFileName : string := "readClipboard" + intstr (VBSID) + ".vbs"
	var VBSReturnName : string := "readClipboard" + intstr (VBSID) + "Ret.txt"

	%writes the VBS file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put
	vbsWriteFileS (fileNo, VBSReturnName)

	put : fileNo, " Set oHtml = CreateObject(\"htmlfile\") "
	put : fileNo, " sClipText = oHtml.ParentWindow.ClipboardData.GetData(\"text\") "
	put : fileNo, " if IsNull(sClipText) then "
	put : fileNo, " objTextFile.WriteLine(\"\") "     %writes empty line
	put : fileNo, " else "
	put : fileNo, " objTextFile.WriteLine(sClipText) "         %writes line
	put : fileNo, " end if "
	put : fileNo, "objTextFile.Close"
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo

	%Run Return and Delete VBS script
	result vbsRRD (fileNo, VBSFileName, VBSReturnName)

    end Paste


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                 Emulate Key Strokes                    %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %Colin Creamer
    %April 18 2011


    %---This will send keyboard input as if the user pressed them---

    procedure SendKeys (keys : string)
	const VBSID : int := nextVBSID ("sendKeys")    %creates private ID num
	var fileNo : int
	var VBSFileName : string := "sendKeys" + intstr (VBSID) + ".vbs"
	%writes the VBS file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put
	put : fileNo, " Set wshshell = CreateObject(\"WScript.Shell\") "
	put : fileNo, " wshshell.sendkeys \"" + exitQuotes (keys) + "\""
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo
	%Executes the VBS File
	runScript (tmpFolderPath + "\\" + VBSFileName)
    end SendKeys

    %Converts modifiers into raw text equivilants
    %Warning: Not copatable with "{" or "}" characters as they are used to deactivate modifiers
    procedure SendKeysText (keys : string)
	var filteredKeys : string := keys
	var filter : string := "~+%()" + chr (94) %Modifiers: ~, +, % and ^
	for i : 1 .. length (filter)
	    filteredKeys := str_replace (filter (i), "{" + filter (i) + "}", filteredKeys)
	end for
	SendKeys (filteredKeys)
    end SendKeysText


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %              WINDOWS SHORTCUT CREATOR                  %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    %Colin Creamer
    %August 28 2010


    %---Create Windows Shortcut Full---

    procedure CreateShortcutFull (targetPath : string, targetName : string, destination : string, description : string, arguments : string, hotKey : string, iconLocation : string, iconSelection :
	    int, windowState : int)


	const VBSID : int := nextVBSID ("newShortcut")    %creates private ID num

	var fileNo : int
	var VBSFileName : string := "newShortcut" + intstr (VBSID) + ".vbs"

	%writes the VBS file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put

	put : fileNo, " Set Shell = CreateObject(\"WScript.Shell\") "
	put : fileNo, " Set link = Shell.CreateShortcut(\"" + destination + "\\" + targetName + ".lnk\" ) "
	put : fileNo, " link.Arguments = \"" + arguments + "\" "
	put : fileNo, " link.Description = \"" + exitQuotes (description) + "\" "
	put : fileNo, " link.HotKey = \"" + hotKey + "\" "
	put : fileNo, " link.IconLocation = \"" + iconLocation + "," + intstr (iconSelection) + "\" "
	put : fileNo, " link.TargetPath = \"" + targetPath + "\\" + targetName + "\" "
	put : fileNo, " link.WindowStyle = " + intstr (windowState)
	put : fileNo, " link.WorkingDirectory = \"" + targetPath + "\" "
	put : fileNo, " link.Save "
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"

	close : fileNo

	%Executes the VBS File
	runScript (tmpFolderPath + "\\" + VBSFileName)

    end CreateShortcutFull

    %--Simple Version----

    procedure CreateShortcut (targetPath : string, targetName : string, destination : string, description : string)
	%Presets arguments and shortcut key to nothing, set icon location, uses first icon, and opens window normally(not min or maximized)
	CreateShortcutFull (targetPath, targetName, destination, description, "", "", targetPath + "\\" + targetName, 0, 1)
    end CreateShortcut


    %-------------------------------------------------------------------

    %Makes the computer talk using the defult speach engine
    procedure SpeachRun (text : string, shouldWait : boolean)

	const VBSID : int := nextVBSID ("newSpeach")     %creates private ID num

	var fileNo : int
	var VBSFileName : string := "newSpeach" + intstr (VBSID) + ".vbs"

	%writes the VBS file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put

	put : fileNo, " Set Sapi = Wscript.CreateObject(\"SAPI.SpVoice\") "
	put : fileNo, " Sapi.speak \"" + exitQuotes (text) + "\""
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"

	close : fileNo

	%Executes the VBS File
	runScript (tmpFolderPath + "\\" + VBSFileName)

	if shouldWait then
	    for i : 1 .. 600 %max 60 second wait
		exit when not File.Exists (tmpFolderPath + "\\" + VBSFileName)
		delay (100)
	    end for
	end if

    end SpeachRun


    procedure Speach (text : string)
	SpeachRun (text, false)
    end Speach

    procedure SpeachWait (text : string)
	SpeachRun (text, true)
    end SpeachWait


    function bitOS () : string
	if Dir.Exists ("C:\\Program Files (x86)") then
	    result "x64"
	end if
	result "x32"
    end bitOS

    procedure bacicGatherInfo
	const bitX : string := bitOS ()

	if Dir.Exists ("C:\\Users\\" + Sys.GetUserName) then
	    if Dir.Exists ("C:\\Program Files\\Movie Maker") then
		Info_OS := "Windows Vista " + bitX
	    else
		Info_OS := "Windows 7 " + bitX
	    end if
	elsif Dir.Exists ("C:\\Documents and Settings\\" + Sys.GetUserName) then
	    Info_OS := "Windows XP " + bitX + " or Older"
	else
	    Info_OS := "Unknown " + bitX + " OS"
	end if

	Info_OSNum := "?.?.?"

    end bacicGatherInfo


    procedure GatherInfo

	const VBSID : int := nextVBSID ("gatherInfo")       %creates private ID num

	var fileNo : int
	var VBSFileName : string := "gatherInfo" + intstr (VBSID) + ".vbs"
	var VBSReturnName : string := "gatherInfo" + intstr (VBSID) + "Ret.txt"

	%writes the VBS file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put
	vbsWriteFileS (fileNo, VBSReturnName)

	put : fileNo, " strComputer = \".\""
	put : fileNo, " Set objWMIService = GetObject(\"winmgmts:\\\\\" & strComputer & \"\\root\\cimv2\")"
	put : fileNo, " Set colOperatingSystems = objWMIService.ExecQuery(\"Select * from Win32_OperatingSystem\")"
	put : fileNo, " For Each objOperatingSystem in colOperatingSystems "
	put : fileNo, " osName = objOperatingSystem.Caption "
	put : fileNo, " odBuild = objOperatingSystem.Version"
	put : fileNo, " Next"
	put : fileNo, " objTextFile.WriteLine(osName) "         %writes line
	put : fileNo, " objTextFile.WriteLine(odBuild) "         %writes line
	put : fileNo, " objTextFile.Close"
	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo

	%insures files were deleted the last time
	if File.Exists (tmpFolderPath + "\\" + VBSReturnName) then
	    File.Delete (tmpFolderPath + "\\" + VBSReturnName)
	end if
	%Exicutes the VBS File
	runScript (tmpFolderPath + "\\" + VBSFileName)
	%Waits for and gets return value from VBS File
	const c := whatcolor ()
	color (brightred) %set text color to red to indecate timing out
	var returnStr : string
	for r : 1 .. 20 %2 second time out (for script to make return)
	    if File.Exists (tmpFolderPath + "\\" + VBSReturnName) then
		for e : 1 .. 15 %1.5 second time out (for script to finsih exicution)
		    delay (100)
		    if not File.Exists (tmpFolderPath + "\\" + VBSFileName) then
			open : fileNo, tmpFolderPath + "\\" + VBSReturnName, get
			%GET INFO FROM FILE
			get : fileNo, Info_OS : *
			get : fileNo, Info_OSNum : *
			close : fileNo
			Info_OS += " " + bitOS ()
			%cleans up temporary file
			File.Delete (tmpFolderPath + "\\" + VBSReturnName)
			color (c) %set color back to defult
			return
		    end if
		    %simple indecation of timming out (execution)
		    if e = 10 then
			put "." ..
			View.Update
		    elsif e = 15 then
			put "."
			View.Update
		    end if
		end for
		exit
		%delay (100)
	    end if
	    %simple indecation of timming out (returnfile)
	    if r = 10 then
		put "." ..
		View.Update
	    elsif r = 20 then
		put "."
		View.Update
	    end if
	    delay (100)
	end for

	color (c) %set color back to defult
	%if the script does not respond, guess aproximate Info
	bacicGatherInfo
	%cleans up temporary file
	File.Delete (tmpFolderPath + "\\" + VBSReturnName)
    end GatherInfo

    %Runs once on firts related call
    var GatherInfoDone : boolean := false
    procedure GatherInfo_RunOnce
	if not GatherInfoDone then
	    GatherInfoDone := true
	    GatherInfo
	end if
    end GatherInfo_RunOnce

    function GetOS () : string
	GatherInfo_RunOnce
	result Info_OS
    end GetOS

    function GetOSNum () : string
	GatherInfo_RunOnce
	result Info_OSNum
    end GetOSNum

    function GetOSFull () : string
	GatherInfo_RunOnce
	result Info_OS + " Build:" + Info_OSNum
    end GetOSFull

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                      Web Dowloader                     %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


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


    procedure Download (url : string, dest : string)

	const VBSID : int := nextVBSID ("download")

	const downloadName : string := splitAddress (url)

	var fileNo : int
	var VBSFileName : string := "download" + intstr (VBSID) + ".vbs"
	%Write vbs file
	open : fileNo, tmpFolderPath + "\\" + VBSFileName, put

	put : fileNo, "url = \"" + url + "\""
	put : fileNo, "dest = \"" + dest + "\\" + downloadName + "\""
	put : fileNo, "Set objXMLHTTP = CreateObject(\"MSXML2.XMLHTTP\")"
	put : fileNo, "objXMLHTTP.open \"GET\", url, false"
	put : fileNo, "objXMLHTTP.send()"
	put : fileNo, "If objXMLHTTP.Status = 200 Then"
	put : fileNo, "Set objADOStream = CreateObject(\"ADODB.Stream\")"
	put : fileNo, "objADOStream.Open"
	put : fileNo, "objADOStream.Type = 1 'adTypeBinary"
	put : fileNo, "objADOStream.Write objXMLHTTP.ResponseBody"
	put : fileNo, "objADOStream.Position = 0    'Set the stream position to the start"
	put : fileNo, "Set objFSO = Createobject(\"Scripting.FileSystemObject\")"
	put : fileNo, "If objFSO.Fileexists(dest) Then objFSO.DeleteFile dest"
	put : fileNo, "Set objFSO = Nothing"
	put : fileNo, "objADOStream.SaveToFile dest"
	put : fileNo, "objADOStream.Close"
	put : fileNo, "Set objADOStream = Nothing"
	put : fileNo, "End if"
	put : fileNo, "Set objXMLHTTP = Nothing"

	put : fileNo, "msgbox(\"Background Download of \"+ downloadName +\" Complete.\")"

	vbsDeleteSelfCode (fileNo, VBSFileName)
	put : fileNo, "WScript.Quit"
	close : fileNo

	%Exicutes the VBS File
	runScript (tmpFolderPath + "\\" + VBSFileName)
    end Download


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                      MISCILANIOUS                      %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    procedure TaskKill (program : string, force : boolean)
	var returnValue : int
	var command : string := "taskkill "
	if force = true then
	    command += "/f "
	end if
	command += "/im \"" + program + "\""
	system (command, returnValue)
    end TaskKill

    % procedure tmpFileCleanup
    % end tmpFileCleanup

    procedure Quit
	QUIT := true
	%GUI.Quit
	if windowsOpen > 0 then
	    TaskKill ("wscript.exe", false)
	end if
	%tmpFileCleanup
    end Quit

    %returns the number for VBS windows open
    function GetWindowsOpen : int
	result windowsOpen
    end GetWindowsOpen
end vbs

