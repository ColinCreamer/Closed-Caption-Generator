%Exsteamy bare bone Pre-Load Screen
%Colin Creamer
%Febuary 2011

%This module simply sets the screen size to the apropriate size before any other moduals load
%The purposes it to preven the screen from flickering a unessisary window wile the other modules load

unit

module preSetScreen
    setscreen ("nobuttonbar, title:Browser, graphics:352;416")
    colorback (grey)
    cls
    color (black)
    put " Loading...."
    View.Update
end preSetScreen
