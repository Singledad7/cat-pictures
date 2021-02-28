
if (global.ingame && oControl.shader_on == false) {
    draw_set_blend_mode(bm_add);
    draw_set_color(c_red);
    draw_set_alpha(screenalpha);
    draw_rectangle(__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 320 + (oControl.widescreen_space/2), __view_get( e__VW.YView, 0 ) + 240, false);
    draw_set_blend_mode(bm_normal);
}

