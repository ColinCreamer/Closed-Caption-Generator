unit

% /---------------------------------------------\
% |------------ EI Library Manager -------------|
% |---------------------------------------------/
% |  Compiler Version: v1.4.1
% |  Compiled on Tuesday January 31st, 2012 at 2:00AM
% |  Compile Time: 9870 millaseconds
% |____________________________________________
% |         Created By: Colin Creamer         |
% |-------------------------------------------|


module EI

    import (
    "Database\\AdobeEncore.bmp_EI.tu",
    "Database\\AfterEffects.bmp_EI.tu",
    "Database\\Ai.bmp_EI.tu",
    "Database\\AS.bmp_EI.tu",
    "Database\\bat.bmp_EI.tu",
    "Database\\Briefcase.bmp_EI.tu",
    "Database\\BrowserSkin.bmp_EI.tu",
    "Database\\btnGradStrip.bmp_EI.tu",
    "Database\\C.bmp_EI.tu",
    "Database\\cancel_btn.bmp_EI.tu",
    "Database\\CDRom.bmp_EI.tu",
    "Database\\Certificate.bmp_EI.tu",
    "Database\\Copy16x.bmp_EI.tu",
    "Database\\cpp.bmp_EI.tu",
    "Database\\cut16x.bmp_EI.tu",
    "Database\\delete16x.bmp_EI.tu",
    "Database\\Desktop.bmp_EI.tu",
    "Database\\doc.bmp_EI.tu",
    "Database\\docX.bmp_EI.tu",
    "Database\\edit16x.bmp_EI.tu",
    "Database\\Excel.bmp_EI.tu",
    "Database\\Exec.bmp_EI.tu",
    "Database\\exit.bmp_EI.tu",
    "Database\\File.bmp_EI.tu",
    "Database\\file16x.bmp_EI.tu",
    "Database\\fileCorupt16x.bmp_EI.tu",
    "Database\\fla.bmp_EI.tu",
    "Database\\floppy.bmp_EI.tu",
    "Database\\flv.bmp_EI.tu",
    "Database\\folder.bmp_EI.tu",
    "Database\\Font.bmp_EI.tu",
    "Database\\FontFolder.bmp_EI.tu",
    "Database\\Gear.bmp_EI.tu",
    "Database\\go16x.bmp_EI.tu",
    "Database\\Graphic.bmp_EI.tu",
    "Database\\HDD.bmp_EI.tu",
    "Database\\HelpFile.bmp_EI.tu",
    "Database\\IE Link.bmp_EI.tu",
    "Database\\ISO.bmp_EI.tu",
    "Database\\jar.bmp_EI.tu",
    "Database\\js.bmp_EI.tu",
    "Database\\mail.bmp_EI.tu",
    "Database\\msdvd.bmp_EI.tu",
    "Database\\mswmm.bmp_EI.tu",
    "Database\\MusicFile.bmp_EI.tu",
    "Database\\My Computer.bmp_EI.tu",
    "Database\\My Music.bmp_EI.tu",
    "Database\\My Pictures.bmp_EI.tu",
    "Database\\myDocs.bmp_EI.tu",
    "Database\\newFolder16x.bmp_EI.tu",
    "Database\\ok_btn.bmp_EI.tu",
    "Database\\Paste16x.bmp_EI.tu",
    "Database\\PDF.bmp_EI.tu",
    "Database\\photo.bmp_EI.tu",
    "Database\\PHP.bmp_EI.tu",
    "Database\\PowerPoint.bmp_EI.tu",
    "Database\\prProj.bmp_EI.tu",
    "Database\\PSD.bmp_EI.tu",
    "Database\\QuickTime.bmp_EI.tu",
    "Database\\Refresh.bmp_EI.tu",
    "Database\\rename16x.bmp_EI.tu",
    "Database\\rightArrow16x.bmp_EI.tu",
    "Database\\ScreenSaver.bmp_EI.tu",
    "Database\\setup.bmp_EI.tu",
    "Database\\shortcut.bmp_EI.tu",
    "Database\\SWF.bmp_EI.tu",
    "Database\\SysFile.bmp_EI.tu",
    "Database\\text.bmp_EI.tu",
    "Database\\torrent.bmp_EI.tu",
    "Database\\turing.bmp_EI.tu",
    "Database\\turingDemo.bmp_EI.tu",
    "Database\\turingInclude.bmp_EI.tu",
    "Database\\turingUnit.bmp_EI.tu",
    "Database\\upDir.bmp_EI.tu",
    "Database\\vbs.bmp_EI.tu",
    "Database\\video.bmp_EI.tu",
    "Database\\winFolder.bmp_EI.tu",
    "Database\\winRar.bmp_EI.tu",
    "Database\\xmlScript.bmp_EI.tu",
    "Database\\xsi.bmp_EI.tu",
    "Database\\Zip.bmp_EI.tu"
)

export AdobeEncorePicID, AfterEffectsPicID, AiPicID, ASPicID, BatPicID, BriefcasePicID, BrowserSkinPicID, BtnGradStripPicID, CPicID, Cancel_btnPicID, CDRomPicID, CertificatePicID, Copy16xPicID, CppPicID, Cut16xPicID, Delete16xPicID, DesktopPicID, DocPicID, DocXPicID, Edit16xPicID, ExcelPicID, ExecPicID, ExitPicID, FilePicID, File16xPicID, FileCorupt16xPicID, FlaPicID, FloppyPicID, FlvPicID, FolderPicID, FontPicID, FontFolderPicID, GearPicID, Go16xPicID, GraphicPicID, HDDPicID, HelpFilePicID, IE_LinkPicID, ISOPicID, JarPicID, JsPicID, MailPicID, MsdvdPicID, MswmmPicID, MusicFilePicID, My_ComputerPicID, My_MusicPicID, My_PicturesPicID, MyDocsPicID, NewFolder16xPicID, Ok_btnPicID, Paste16xPicID, PDFPicID, PhotoPicID, PHPPicID, PowerPointPicID, PrProjPicID, PSDPicID, QuickTimePicID, RefreshPicID, Rename16xPicID, RightArrow16xPicID, ScreenSaverPicID, SetupPicID, ShortcutPicID, SWFPicID, SysFilePicID, TextPicID, TorrentPicID, TuringPicID, TuringDemoPicID, TuringIncludePicID, TuringUnitPicID, UpDirPicID, VbsPicID, VideoPicID, WinFolderPicID, WinRarPicID, XmlScriptPicID, XsiPicID, ZipPicID, IDbyName, IDbyNum, MaxIDs, RenderAll




function MaxIDs () : int
    result 81
end MaxIDs

function IDbyNum (num : int) : int
    case num of
        label 1 :
        result AdobeEncorePic.ID ()
        label 2 :
        result AfterEffectsPic.ID ()
        label 3 :
        result AiPic.ID ()
        label 4 :
        result ASPic.ID ()
        label 5 :
        result BatPic.ID ()
        label 6 :
        result BriefcasePic.ID ()
        label 7 :
        result BrowserSkinPic.ID ()
        label 8 :
        result BtnGradStripPic.ID ()
        label 9 :
        result CPic.ID ()
        label 10 :
        result Cancel_btnPic.ID ()
        label 11 :
        result CDRomPic.ID ()
        label 12 :
        result CertificatePic.ID ()
        label 13 :
        result Copy16xPic.ID ()
        label 14 :
        result CppPic.ID ()
        label 15 :
        result Cut16xPic.ID ()
        label 16 :
        result Delete16xPic.ID ()
        label 17 :
        result DesktopPic.ID ()
        label 18 :
        result DocPic.ID ()
        label 19 :
        result DocXPic.ID ()
        label 20 :
        result Edit16xPic.ID ()
        label 21 :
        result ExcelPic.ID ()
        label 22 :
        result ExecPic.ID ()
        label 23 :
        result ExitPic.ID ()
        label 24 :
        result FilePic.ID ()
        label 25 :
        result File16xPic.ID ()
        label 26 :
        result FileCorupt16xPic.ID ()
        label 27 :
        result FlaPic.ID ()
        label 28 :
        result FloppyPic.ID ()
        label 29 :
        result FlvPic.ID ()
        label 30 :
        result FolderPic.ID ()
        label 31 :
        result FontPic.ID ()
        label 32 :
        result FontFolderPic.ID ()
        label 33 :
        result GearPic.ID ()
        label 34 :
        result Go16xPic.ID ()
        label 35 :
        result GraphicPic.ID ()
        label 36 :
        result HDDPic.ID ()
        label 37 :
        result HelpFilePic.ID ()
        label 38 :
        result IE_LinkPic.ID ()
        label 39 :
        result ISOPic.ID ()
        label 40 :
        result JarPic.ID ()
        label 41 :
        result JsPic.ID ()
        label 42 :
        result MailPic.ID ()
        label 43 :
        result MsdvdPic.ID ()
        label 44 :
        result MswmmPic.ID ()
        label 45 :
        result MusicFilePic.ID ()
        label 46 :
        result My_ComputerPic.ID ()
        label 47 :
        result My_MusicPic.ID ()
        label 48 :
        result My_PicturesPic.ID ()
        label 49 :
        result MyDocsPic.ID ()
        label 50 :
        result NewFolder16xPic.ID ()
        label 51 :
        result Ok_btnPic.ID ()
        label 52 :
        result Paste16xPic.ID ()
        label 53 :
        result PDFPic.ID ()
        label 54 :
        result PhotoPic.ID ()
        label 55 :
        result PHPPic.ID ()
        label 56 :
        result PowerPointPic.ID ()
        label 57 :
        result PrProjPic.ID ()
        label 58 :
        result PSDPic.ID ()
        label 59 :
        result QuickTimePic.ID ()
        label 60 :
        result RefreshPic.ID ()
        label 61 :
        result Rename16xPic.ID ()
        label 62 :
        result RightArrow16xPic.ID ()
        label 63 :
        result ScreenSaverPic.ID ()
        label 64 :
        result SetupPic.ID ()
        label 65 :
        result ShortcutPic.ID ()
        label 66 :
        result SWFPic.ID ()
        label 67 :
        result SysFilePic.ID ()
        label 68 :
        result TextPic.ID ()
        label 69 :
        result TorrentPic.ID ()
        label 70 :
        result TuringPic.ID ()
        label 71 :
        result TuringDemoPic.ID ()
        label 72 :
        result TuringIncludePic.ID ()
        label 73 :
        result TuringUnitPic.ID ()
        label 74 :
        result UpDirPic.ID ()
        label 75 :
        result VbsPic.ID ()
        label 76 :
        result VideoPic.ID ()
        label 77 :
        result WinFolderPic.ID ()
        label 78 :
        result WinRarPic.ID ()
        label 79 :
        result XmlScriptPic.ID ()
        label 80 :
        result XsiPic.ID ()
        label 81 :
        result ZipPic.ID ()
    end case
end IDbyNum

function IDbyName (originalFileName : string) : int
    case originalFileName of
        label "AdobeEncorePic", "AdobeEncore.bmp", "AdobeEncore.bmp_EI.tu" :
            result IDbyNum(1)
        label "AfterEffectsPic", "AfterEffects.bmp", "AfterEffects.bmp_EI.tu" :
            result IDbyNum(2)
        label "AiPic", "Ai.bmp", "Ai.bmp_EI.tu" :
            result IDbyNum(3)
        label "ASPic", "AS.bmp", "AS.bmp_EI.tu" :
            result IDbyNum(4)
        label "BatPic", "bat.bmp", "bat.bmp_EI.tu" :
            result IDbyNum(5)
        label "BriefcasePic", "Briefcase.bmp", "Briefcase.bmp_EI.tu" :
            result IDbyNum(6)
        label "BrowserSkinPic", "BrowserSkin.bmp", "BrowserSkin.bmp_EI.tu" :
            result IDbyNum(7)
        label "BtnGradStripPic", "btnGradStrip.bmp", "btnGradStrip.bmp_EI.tu" :
            result IDbyNum(8)
        label "CPic", "C.bmp", "C.bmp_EI.tu" :
            result IDbyNum(9)
        label "Cancel_btnPic", "cancel_btn.bmp", "cancel_btn.bmp_EI.tu" :
            result IDbyNum(10)
        label "CDRomPic", "CDRom.bmp", "CDRom.bmp_EI.tu" :
            result IDbyNum(11)
        label "CertificatePic", "Certificate.bmp", "Certificate.bmp_EI.tu" :
            result IDbyNum(12)
        label "Copy16xPic", "Copy16x.bmp", "Copy16x.bmp_EI.tu" :
            result IDbyNum(13)
        label "CppPic", "cpp.bmp", "cpp.bmp_EI.tu" :
            result IDbyNum(14)
        label "Cut16xPic", "cut16x.bmp", "cut16x.bmp_EI.tu" :
            result IDbyNum(15)
        label "Delete16xPic", "delete16x.bmp", "delete16x.bmp_EI.tu" :
            result IDbyNum(16)
        label "DesktopPic", "Desktop.bmp", "Desktop.bmp_EI.tu" :
            result IDbyNum(17)
        label "DocPic", "doc.bmp", "doc.bmp_EI.tu" :
            result IDbyNum(18)
        label "DocXPic", "docX.bmp", "docX.bmp_EI.tu" :
            result IDbyNum(19)
        label "Edit16xPic", "edit16x.bmp", "edit16x.bmp_EI.tu" :
            result IDbyNum(20)
        label "ExcelPic", "Excel.bmp", "Excel.bmp_EI.tu" :
            result IDbyNum(21)
        label "ExecPic", "Exec.bmp", "Exec.bmp_EI.tu" :
            result IDbyNum(22)
        label "ExitPic", "exit.bmp", "exit.bmp_EI.tu" :
            result IDbyNum(23)
        label "FilePic", "File.bmp", "File.bmp_EI.tu" :
            result IDbyNum(24)
        label "File16xPic", "file16x.bmp", "file16x.bmp_EI.tu" :
            result IDbyNum(25)
        label "FileCorupt16xPic", "fileCorupt16x.bmp", "fileCorupt16x.bmp_EI.tu" :
            result IDbyNum(26)
        label "FlaPic", "fla.bmp", "fla.bmp_EI.tu" :
            result IDbyNum(27)
        label "FloppyPic", "floppy.bmp", "floppy.bmp_EI.tu" :
            result IDbyNum(28)
        label "FlvPic", "flv.bmp", "flv.bmp_EI.tu" :
            result IDbyNum(29)
        label "FolderPic", "folder.bmp", "folder.bmp_EI.tu" :
            result IDbyNum(30)
        label "FontPic", "Font.bmp", "Font.bmp_EI.tu" :
            result IDbyNum(31)
        label "FontFolderPic", "FontFolder.bmp", "FontFolder.bmp_EI.tu" :
            result IDbyNum(32)
        label "GearPic", "Gear.bmp", "Gear.bmp_EI.tu" :
            result IDbyNum(33)
        label "Go16xPic", "go16x.bmp", "go16x.bmp_EI.tu" :
            result IDbyNum(34)
        label "GraphicPic", "Graphic.bmp", "Graphic.bmp_EI.tu" :
            result IDbyNum(35)
        label "HDDPic", "HDD.bmp", "HDD.bmp_EI.tu" :
            result IDbyNum(36)
        label "HelpFilePic", "HelpFile.bmp", "HelpFile.bmp_EI.tu" :
            result IDbyNum(37)
        label "IE_LinkPic", "IE Link.bmp", "IE Link.bmp_EI.tu" :
            result IDbyNum(38)
        label "ISOPic", "ISO.bmp", "ISO.bmp_EI.tu" :
            result IDbyNum(39)
        label "JarPic", "jar.bmp", "jar.bmp_EI.tu" :
            result IDbyNum(40)
        label "JsPic", "js.bmp", "js.bmp_EI.tu" :
            result IDbyNum(41)
        label "MailPic", "mail.bmp", "mail.bmp_EI.tu" :
            result IDbyNum(42)
        label "MsdvdPic", "msdvd.bmp", "msdvd.bmp_EI.tu" :
            result IDbyNum(43)
        label "MswmmPic", "mswmm.bmp", "mswmm.bmp_EI.tu" :
            result IDbyNum(44)
        label "MusicFilePic", "MusicFile.bmp", "MusicFile.bmp_EI.tu" :
            result IDbyNum(45)
        label "My_ComputerPic", "My Computer.bmp", "My Computer.bmp_EI.tu" :
            result IDbyNum(46)
        label "My_MusicPic", "My Music.bmp", "My Music.bmp_EI.tu" :
            result IDbyNum(47)
        label "My_PicturesPic", "My Pictures.bmp", "My Pictures.bmp_EI.tu" :
            result IDbyNum(48)
        label "MyDocsPic", "myDocs.bmp", "myDocs.bmp_EI.tu" :
            result IDbyNum(49)
        label "NewFolder16xPic", "newFolder16x.bmp", "newFolder16x.bmp_EI.tu" :
            result IDbyNum(50)
        label "Ok_btnPic", "ok_btn.bmp", "ok_btn.bmp_EI.tu" :
            result IDbyNum(51)
        label "Paste16xPic", "Paste16x.bmp", "Paste16x.bmp_EI.tu" :
            result IDbyNum(52)
        label "PDFPic", "PDF.bmp", "PDF.bmp_EI.tu" :
            result IDbyNum(53)
        label "PhotoPic", "photo.bmp", "photo.bmp_EI.tu" :
            result IDbyNum(54)
        label "PHPPic", "PHP.bmp", "PHP.bmp_EI.tu" :
            result IDbyNum(55)
        label "PowerPointPic", "PowerPoint.bmp", "PowerPoint.bmp_EI.tu" :
            result IDbyNum(56)
        label "PrProjPic", "prProj.bmp", "prProj.bmp_EI.tu" :
            result IDbyNum(57)
        label "PSDPic", "PSD.bmp", "PSD.bmp_EI.tu" :
            result IDbyNum(58)
        label "QuickTimePic", "QuickTime.bmp", "QuickTime.bmp_EI.tu" :
            result IDbyNum(59)
        label "RefreshPic", "Refresh.bmp", "Refresh.bmp_EI.tu" :
            result IDbyNum(60)
        label "Rename16xPic", "rename16x.bmp", "rename16x.bmp_EI.tu" :
            result IDbyNum(61)
        label "RightArrow16xPic", "rightArrow16x.bmp", "rightArrow16x.bmp_EI.tu" :
            result IDbyNum(62)
        label "ScreenSaverPic", "ScreenSaver.bmp", "ScreenSaver.bmp_EI.tu" :
            result IDbyNum(63)
        label "SetupPic", "setup.bmp", "setup.bmp_EI.tu" :
            result IDbyNum(64)
        label "ShortcutPic", "shortcut.bmp", "shortcut.bmp_EI.tu" :
            result IDbyNum(65)
        label "SWFPic", "SWF.bmp", "SWF.bmp_EI.tu" :
            result IDbyNum(66)
        label "SysFilePic", "SysFile.bmp", "SysFile.bmp_EI.tu" :
            result IDbyNum(67)
        label "TextPic", "text.bmp", "text.bmp_EI.tu" :
            result IDbyNum(68)
        label "TorrentPic", "torrent.bmp", "torrent.bmp_EI.tu" :
            result IDbyNum(69)
        label "TuringPic", "turing.bmp", "turing.bmp_EI.tu" :
            result IDbyNum(70)
        label "TuringDemoPic", "turingDemo.bmp", "turingDemo.bmp_EI.tu" :
            result IDbyNum(71)
        label "TuringIncludePic", "turingInclude.bmp", "turingInclude.bmp_EI.tu" :
            result IDbyNum(72)
        label "TuringUnitPic", "turingUnit.bmp", "turingUnit.bmp_EI.tu" :
            result IDbyNum(73)
        label "UpDirPic", "upDir.bmp", "upDir.bmp_EI.tu" :
            result IDbyNum(74)
        label "VbsPic", "vbs.bmp", "vbs.bmp_EI.tu" :
            result IDbyNum(75)
        label "VideoPic", "video.bmp", "video.bmp_EI.tu" :
            result IDbyNum(76)
        label "WinFolderPic", "winFolder.bmp", "winFolder.bmp_EI.tu" :
            result IDbyNum(77)
        label "WinRarPic", "winRar.bmp", "winRar.bmp_EI.tu" :
            result IDbyNum(78)
        label "XmlScriptPic", "xmlScript.bmp", "xmlScript.bmp_EI.tu" :
            result IDbyNum(79)
        label "XsiPic", "xsi.bmp", "xsi.bmp_EI.tu" :
            result IDbyNum(80)
        label "ZipPic", "Zip.bmp", "Zip.bmp_EI.tu" :
            result IDbyNum(81)
    label :
        put "Not a valid name."
    end case
end IDbyName


%----All ID functions----


function AdobeEncorePicID () : int
    result AdobeEncorePic.ID ()
end AdobeEncorePicID

function AfterEffectsPicID () : int
    result AfterEffectsPic.ID ()
end AfterEffectsPicID

function AiPicID () : int
    result AiPic.ID ()
end AiPicID

function ASPicID () : int
    result ASPic.ID ()
end ASPicID

function BatPicID () : int
    result BatPic.ID ()
end BatPicID

function BriefcasePicID () : int
    result BriefcasePic.ID ()
end BriefcasePicID

function BrowserSkinPicID () : int
    result BrowserSkinPic.ID ()
end BrowserSkinPicID

function BtnGradStripPicID () : int
    result BtnGradStripPic.ID ()
end BtnGradStripPicID

function CPicID () : int
    result CPic.ID ()
end CPicID

function Cancel_btnPicID () : int
    result Cancel_btnPic.ID ()
end Cancel_btnPicID

function CDRomPicID () : int
    result CDRomPic.ID ()
end CDRomPicID

function CertificatePicID () : int
    result CertificatePic.ID ()
end CertificatePicID

function Copy16xPicID () : int
    result Copy16xPic.ID ()
end Copy16xPicID

function CppPicID () : int
    result CppPic.ID ()
end CppPicID

function Cut16xPicID () : int
    result Cut16xPic.ID ()
end Cut16xPicID

function Delete16xPicID () : int
    result Delete16xPic.ID ()
end Delete16xPicID

function DesktopPicID () : int
    result DesktopPic.ID ()
end DesktopPicID

function DocPicID () : int
    result DocPic.ID ()
end DocPicID

function DocXPicID () : int
    result DocXPic.ID ()
end DocXPicID

function Edit16xPicID () : int
    result Edit16xPic.ID ()
end Edit16xPicID

function ExcelPicID () : int
    result ExcelPic.ID ()
end ExcelPicID

function ExecPicID () : int
    result ExecPic.ID ()
end ExecPicID

function ExitPicID () : int
    result ExitPic.ID ()
end ExitPicID

function FilePicID () : int
    result FilePic.ID ()
end FilePicID

function File16xPicID () : int
    result File16xPic.ID ()
end File16xPicID

function FileCorupt16xPicID () : int
    result FileCorupt16xPic.ID ()
end FileCorupt16xPicID

function FlaPicID () : int
    result FlaPic.ID ()
end FlaPicID

function FloppyPicID () : int
    result FloppyPic.ID ()
end FloppyPicID

function FlvPicID () : int
    result FlvPic.ID ()
end FlvPicID

function FolderPicID () : int
    result FolderPic.ID ()
end FolderPicID

function FontPicID () : int
    result FontPic.ID ()
end FontPicID

function FontFolderPicID () : int
    result FontFolderPic.ID ()
end FontFolderPicID

function GearPicID () : int
    result GearPic.ID ()
end GearPicID

function Go16xPicID () : int
    result Go16xPic.ID ()
end Go16xPicID

function GraphicPicID () : int
    result GraphicPic.ID ()
end GraphicPicID

function HDDPicID () : int
    result HDDPic.ID ()
end HDDPicID

function HelpFilePicID () : int
    result HelpFilePic.ID ()
end HelpFilePicID

function IE_LinkPicID () : int
    result IE_LinkPic.ID ()
end IE_LinkPicID

function ISOPicID () : int
    result ISOPic.ID ()
end ISOPicID

function JarPicID () : int
    result JarPic.ID ()
end JarPicID

function JsPicID () : int
    result JsPic.ID ()
end JsPicID

function MailPicID () : int
    result MailPic.ID ()
end MailPicID

function MsdvdPicID () : int
    result MsdvdPic.ID ()
end MsdvdPicID

function MswmmPicID () : int
    result MswmmPic.ID ()
end MswmmPicID

function MusicFilePicID () : int
    result MusicFilePic.ID ()
end MusicFilePicID

function My_ComputerPicID () : int
    result My_ComputerPic.ID ()
end My_ComputerPicID

function My_MusicPicID () : int
    result My_MusicPic.ID ()
end My_MusicPicID

function My_PicturesPicID () : int
    result My_PicturesPic.ID ()
end My_PicturesPicID

function MyDocsPicID () : int
    result MyDocsPic.ID ()
end MyDocsPicID

function NewFolder16xPicID () : int
    result NewFolder16xPic.ID ()
end NewFolder16xPicID

function Ok_btnPicID () : int
    result Ok_btnPic.ID ()
end Ok_btnPicID

function Paste16xPicID () : int
    result Paste16xPic.ID ()
end Paste16xPicID

function PDFPicID () : int
    result PDFPic.ID ()
end PDFPicID

function PhotoPicID () : int
    result PhotoPic.ID ()
end PhotoPicID

function PHPPicID () : int
    result PHPPic.ID ()
end PHPPicID

function PowerPointPicID () : int
    result PowerPointPic.ID ()
end PowerPointPicID

function PrProjPicID () : int
    result PrProjPic.ID ()
end PrProjPicID

function PSDPicID () : int
    result PSDPic.ID ()
end PSDPicID

function QuickTimePicID () : int
    result QuickTimePic.ID ()
end QuickTimePicID

function RefreshPicID () : int
    result RefreshPic.ID ()
end RefreshPicID

function Rename16xPicID () : int
    result Rename16xPic.ID ()
end Rename16xPicID

function RightArrow16xPicID () : int
    result RightArrow16xPic.ID ()
end RightArrow16xPicID

function ScreenSaverPicID () : int
    result ScreenSaverPic.ID ()
end ScreenSaverPicID

function SetupPicID () : int
    result SetupPic.ID ()
end SetupPicID

function ShortcutPicID () : int
    result ShortcutPic.ID ()
end ShortcutPicID

function SWFPicID () : int
    result SWFPic.ID ()
end SWFPicID

function SysFilePicID () : int
    result SysFilePic.ID ()
end SysFilePicID

function TextPicID () : int
    result TextPic.ID ()
end TextPicID

function TorrentPicID () : int
    result TorrentPic.ID ()
end TorrentPicID

function TuringPicID () : int
    result TuringPic.ID ()
end TuringPicID

function TuringDemoPicID () : int
    result TuringDemoPic.ID ()
end TuringDemoPicID

function TuringIncludePicID () : int
    result TuringIncludePic.ID ()
end TuringIncludePicID

function TuringUnitPicID () : int
    result TuringUnitPic.ID ()
end TuringUnitPicID

function UpDirPicID () : int
    result UpDirPic.ID ()
end UpDirPicID

function VbsPicID () : int
    result VbsPic.ID ()
end VbsPicID

function VideoPicID () : int
    result VideoPic.ID ()
end VideoPicID

function WinFolderPicID () : int
    result WinFolderPic.ID ()
end WinFolderPicID

function WinRarPicID () : int
    result WinRarPic.ID ()
end WinRarPicID

function XmlScriptPicID () : int
    result XmlScriptPic.ID ()
end XmlScriptPicID

function XsiPicID () : int
    result XsiPic.ID ()
end XsiPicID

function ZipPicID () : int
    result ZipPic.ID ()
end ZipPicID



procedure RenderAll

    AdobeEncorePic.Render
    AfterEffectsPic.Render
    AiPic.Render
    ASPic.Render
    BatPic.Render
    BriefcasePic.Render
    BrowserSkinPic.Render
    BtnGradStripPic.Render
    CPic.Render
    Cancel_btnPic.Render
    CDRomPic.Render
    CertificatePic.Render
    Copy16xPic.Render
    CppPic.Render
    Cut16xPic.Render
    Delete16xPic.Render
    DesktopPic.Render
    DocPic.Render
    DocXPic.Render
    Edit16xPic.Render
    ExcelPic.Render
    ExecPic.Render
    ExitPic.Render
    FilePic.Render
    File16xPic.Render
    FileCorupt16xPic.Render
    FlaPic.Render
    FloppyPic.Render
    FlvPic.Render
    FolderPic.Render
    FontPic.Render
    FontFolderPic.Render
    GearPic.Render
    Go16xPic.Render
    GraphicPic.Render
    HDDPic.Render
    HelpFilePic.Render
    IE_LinkPic.Render
    ISOPic.Render
    JarPic.Render
    JsPic.Render
    MailPic.Render
    MsdvdPic.Render
    MswmmPic.Render
    MusicFilePic.Render
    My_ComputerPic.Render
    My_MusicPic.Render
    My_PicturesPic.Render
    MyDocsPic.Render
    NewFolder16xPic.Render
    Ok_btnPic.Render
    Paste16xPic.Render
    PDFPic.Render
    PhotoPic.Render
    PHPPic.Render
    PowerPointPic.Render
    PrProjPic.Render
    PSDPic.Render
    QuickTimePic.Render
    RefreshPic.Render
    Rename16xPic.Render
    RightArrow16xPic.Render
    ScreenSaverPic.Render
    SetupPic.Render
    ShortcutPic.Render
    SWFPic.Render
    SysFilePic.Render
    TextPic.Render
    TorrentPic.Render
    TuringPic.Render
    TuringDemoPic.Render
    TuringIncludePic.Render
    TuringUnitPic.Render
    UpDirPic.Render
    VbsPic.Render
    VideoPic.Render
    WinFolderPic.Render
    WinRarPic.Render
    XmlScriptPic.Render
    XsiPic.Render
    ZipPic.Render

end RenderAll


end EI
