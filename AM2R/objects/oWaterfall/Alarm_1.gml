alarm[1] = 10;
bubble = instance_create(x + random(64), global.waterlevel + 10, oLBubble);
if (instance_exists(bubble)) {
    bubble.vspeed = 1.5 - random(0.8);
    with (bubble) if ((x < (__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2))) || (x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + (oControl.widescreen_space/2)))) instance_destroy();
    // if (x < view_xview[0] || x > view_xview[0] + view_wview[0]) instance_destroy();
}

