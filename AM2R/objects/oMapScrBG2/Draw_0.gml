draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(__view_get( e__VW.XView, 0 )-(widescreen_space/2), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 330 + (widescreen_space/2), __view_get( e__VW.YView, 0 ) + 41 - rectoffset, false);
draw_rectangle(__view_get( e__VW.XView, 0 )-(widescreen_space/2), __view_get( e__VW.YView, 0 ) + 198 + rectoffset, __view_get( e__VW.XView, 0 ) + 330 + (widescreen_space/2), __view_get( e__VW.YView, 0 ) + 250, false);
draw_background_ext(bg_SubScrBottom, __view_get( e__VW.XView, 0 )-(widescreen_space/2), __view_get( e__VW.YView, 0 ) + 32 - rectoffset, 10+(widescreen*3), 1, 0, -1, ealpha);
draw_background_ext(bg_MapBottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + 198 + rectoffset, 1, 1, 0, -1, ealpha);
draw_set_alpha(ealpha);
draw_set_font(fontGUI2);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(__view_get( e__VW.XView, 0 ) + 161, __view_get( e__VW.YView, 0 ) + 30 - rectoffset, string_hash_to_newline(maptext));
draw_set_color(c_white);
draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 29 - rectoffset, string_hash_to_newline(maptext));
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_text(__view_get( e__VW.XView, 0 ) + 18, __view_get( e__VW.YView, 0 ) + 196 + rectoffset, string_hash_to_newline(timetext));
draw_text(__view_get( e__VW.XView, 0 ) + 260, __view_get( e__VW.YView, 0 ) + 196 + rectoffset, string_hash_to_newline(metrtext1));
draw_text(__view_get( e__VW.XView, 0 ) + 304, __view_get( e__VW.YView, 0 ) + 196 + rectoffset, string_hash_to_newline(metrtext2));
draw_set_color(c_white);
draw_text(__view_get( e__VW.XView, 0 ) + 17, __view_get( e__VW.YView, 0 ) + 195 + rectoffset, string_hash_to_newline(timetext));
draw_text(__view_get( e__VW.XView, 0 ) + 259, __view_get( e__VW.YView, 0 ) + 195 + rectoffset, string_hash_to_newline(metrtext1));
draw_text(__view_get( e__VW.XView, 0 ) + 303, __view_get( e__VW.YView, 0 ) + 195 + rectoffset, string_hash_to_newline(metrtext2));
draw_set_font(fontMenuSmall);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(__view_get( e__VW.XView, 0 ) + 318, __view_get( e__VW.YView, 0 ) + 229 + rectoffset, string_hash_to_newline(tip1text));
draw_set_halign(fa_left);
if (oMapCursor.state == 0) draw_text(__view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ) + 229 + rectoffset, string_hash_to_newline(tip2text));
if (oMapCursor.state == 1) {
    draw_text(__view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ) + 221 + rectoffset, string_hash_to_newline(tip3text));
    draw_text(__view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ) + 229 + rectoffset, string_hash_to_newline(tip4text));
}
if (oMapCursor.state == 2) draw_text(__view_get( e__VW.XView, 0 ) + 2, __view_get( e__VW.YView, 0 ) + 229 + rectoffset, string_hash_to_newline(tip5text));

