draw_set_blend_mode(bm_add);
draw_set_color(c_white);
draw_set_alpha(alpha);
draw_rectangle(__view_get( e__VW.XView, oControl.widescreen ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, oControl.widescreen ) + 325 + oControl.widescreen_space, __view_get( e__VW.YView, 0 ) + 245, false);
draw_set_blend_mode(bm_normal);

