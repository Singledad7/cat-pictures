/// @description  Player death transition
with (oCharacter) {
    x -= __view_get( e__VW.XView, 0 );
    y -= __view_get( e__VW.YView, 0 );
    visible = false;
}
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );
mus_current_fadeout();
sfx_stop_all();
sfx_play(sndPlayerDeath);
global.vibL = 0;
global.vibR = 0;
global.ingame = 0;
global.darkness = 0;
global.gotolog = -1;
global.transitiontype = 3;
event_user(3);
room_goto(rm_death);

