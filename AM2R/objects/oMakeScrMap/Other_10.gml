rows = room_height / 240;
columns = room_width / 320;
row = 0;
column = 0;
__view_set( e__VW.Object, 0, noone );
with (oBackground) instance_destroy();
with (oControl) displaygui = 0;
with (oCharacter) {
    visible = false;
    x = 16;
    y = 16;
    state = 33;
}
with (oFlashLight2) instance_destroy();
//with (oTestKeys) visible = false;
__background_set_colour( c_blue );
__background_set_showcolour( 1 );
__background_set( e__BG.Visible, 0, 0 );
__view_set( e__VW.XView, 0, column * 320 );
__view_set( e__VW.YView, 0, row * 240 );

