draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ) + 0, __view_get( e__VW.YView, 0 ) + 230, __view_get( e__VW.XView, 0 ) + 322, __view_get( e__VW.YView, 0 ) + 245, false);
draw_set_color(c_white);
draw_set_font(fontMenuSmall);
draw_set_halign(fa_center);
draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 228, string_hash_to_newline(global.tiptext));
draw_set_halign(fa_left);

