/// @description Destroy if outside room && state == 3
if(state == 3) {
    if ((x < (__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2))) || (x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + (oControl.widescreen_space/2))) || (y < 0) || (y > room_height)) {
        instance_destroy();
    }
}

