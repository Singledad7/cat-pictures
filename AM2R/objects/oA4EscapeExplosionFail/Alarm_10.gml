global.enablecontrol = 1;
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );
global.vibL = 0;
global.vibR = 0;
global.ingame = 0;
global.darkness = 0;
with (oControl) displaygui = 1;
remove_persistent_objects();
room_change(2, 0);

