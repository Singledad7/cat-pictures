if (fadeout) {
    image_alpha -= 0.1;
    if (image_alpha <= 0) instance_destroy();
} else if (y < global.waterlevel + global.wateroffset + 10) fadeout = 1;
if (!eris) {
    if (hspeed != 0) hspeed *= 0.9;
    if (vspeed > -1) vspeed -= 0.02;
    if (vspeed > 2) vspeed = 2;
} else speed = lerp(speed, 0, 0.05);

if ((x < (__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2))) || (x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + (oControl.widescreen_space/2))) || (y < __view_get( e__VW.YView, 0 )) || (y > (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )))) {
    visible = false;
    if(fps_real < 60) instance_destroy();
}

