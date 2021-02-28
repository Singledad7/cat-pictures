draw_set_alpha(1);
draw_set_blend_mode(bm_subtract);
draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, -1, 1);
draw_sprite_ext(sprite_index, -1, x, y, -1, 1, 0, -1, 1);
draw_sprite_ext(sprite_index, -1, x, y, 1, -1, 0, -1, 1);
draw_sprite_ext(sprite_index, -1, x, y, -1, -1, 0, -1, 1);
draw_set_blend_mode(bm_normal);
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), x - 64, __view_get( e__VW.YView, 0 ) + 240, false);
draw_rectangle(x - 64, __view_get( e__VW.YView, 0 ), x + 64, y - 64, false);
draw_rectangle(x - 64, y + 64, x + 64, __view_get( e__VW.YView, 0 ) + 240, false);
draw_rectangle(x + 64, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 320, __view_get( e__VW.YView, 0 ) + 240, false);

