%This module simply sets the screen size to the apropriate size before any other moduals load
%The purposes it to preven the screen from flickering a unessisary window wile the other modules load

unit

module preSetScreen

   setscreen ("offscreenonly,nobuttonbar,graphics:352;430")%352;416
   color(white)
   colorback(black)
   cls
   put "Loading...."

end preSetScreen
