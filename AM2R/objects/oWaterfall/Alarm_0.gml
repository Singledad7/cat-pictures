alarm[0] = 1;
w = instance_create(x + random(64), global.waterlevel - 1, oFXAnimSpark);
w.image_speed = 0.25 + random(0.5);
w.additive = 0;
w.sprite_index = sWaterSplash;
w.image_alpha = 0.8;
w.depth = -15;
with (w) if ((x < (__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2))) || (x > (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + (oControl.widescreen_space/2)))) instance_destroy();

