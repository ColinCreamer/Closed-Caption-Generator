unit

% /---------------------------------------------\
% |------------ EI Library Manager -------------|
% |---------------------------------------------/
% |  Compiler Version: v1.4.1
% |  Compiled on Monday February 27th, 2012 at 4:12AM
% |  Compile Time: 9417 millaseconds
% |____________________________________________
% |         Created By: Colin Creamer         |
% |-------------------------------------------|


module EI

    import (
    "Database\\Author.bmp_EI.tu",
    "Database\\Brackets.bmp_EI.tu",
    "Database\\Generate Page.bmp_EI.tu",
    "Database\\InputPannel.bmp_EI.tu",
    "Database\\Main Page.bmp_EI.tu",
    "Database\\Title.bmp_EI.tu"
)

export AuthorPicID, BracketsPicID, Generate_PagePicID, InputPannelPicID, Main_PagePicID, TitlePicID, IDbyName, IDbyNum, MaxIDs, RenderAll




function MaxIDs () : int
    result 6
end MaxIDs

function IDbyNum (num : int) : int
    case num of
        label 1 :
        result AuthorPic.ID ()
        label 2 :
        result BracketsPic.ID ()
        label 3 :
        result Generate_PagePic.ID ()
        label 4 :
        result InputPannelPic.ID ()
        label 5 :
        result Main_PagePic.ID ()
        label 6 :
        result TitlePic.ID ()
    end case
end IDbyNum

function IDbyName (originalFileName : string) : int
    case originalFileName of
        label "AuthorPic", "Author.bmp", "Author.bmp_EI.tu" :
            result IDbyNum(1)
        label "BracketsPic", "Brackets.bmp", "Brackets.bmp_EI.tu" :
            result IDbyNum(2)
        label "Generate_PagePic", "Generate Page.bmp", "Generate Page.bmp_EI.tu" :
            result IDbyNum(3)
        label "InputPannelPic", "InputPannel.bmp", "InputPannel.bmp_EI.tu" :
            result IDbyNum(4)
        label "Main_PagePic", "Main Page.bmp", "Main Page.bmp_EI.tu" :
            result IDbyNum(5)
        label "TitlePic", "Title.bmp", "Title.bmp_EI.tu" :
            result IDbyNum(6)
    label :
        put "Not a valid name."
    end case
end IDbyName


%----All ID functions----


function AuthorPicID () : int
    result AuthorPic.ID ()
end AuthorPicID

function BracketsPicID () : int
    result BracketsPic.ID ()
end BracketsPicID

function Generate_PagePicID () : int
    result Generate_PagePic.ID ()
end Generate_PagePicID

function InputPannelPicID () : int
    result InputPannelPic.ID ()
end InputPannelPicID

function Main_PagePicID () : int
    result Main_PagePic.ID ()
end Main_PagePicID

function TitlePicID () : int
    result TitlePic.ID ()
end TitlePicID



procedure RenderAll

    AuthorPic.Render
    BracketsPic.Render
    Generate_PagePic.Render
    InputPannelPic.Render
    Main_PagePic.Render
    TitlePic.Render

end RenderAll


end EI
