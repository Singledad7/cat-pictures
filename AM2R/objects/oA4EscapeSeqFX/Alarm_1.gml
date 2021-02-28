expl = instance_create((__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2)) + random(320 + oControl.widescreen_space), __view_get( e__VW.YView, 0 ) + random(240), oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
expl.sprite_index = sExpl1;
expl.image_xscale = 0.6;
expl.image_yscale = 0.6;
expl.depth = 50;
if (explosions) alarm[1] = 5;

