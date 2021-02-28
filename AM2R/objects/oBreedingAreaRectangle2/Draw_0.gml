draw_set_blend_mode(bm_add);
draw_set_alpha(1);
draw_rectangle_color(__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2), __view_get( e__VW.YView, 0 ) + 160, __view_get( e__VW.XView, 0 ) + 350 + (oControl.widescreen_space/2), __view_get( e__VW.YView, 0 ) + 250, c_black, c_black, color, color, false);
draw_set_blend_mode(bm_normal);

