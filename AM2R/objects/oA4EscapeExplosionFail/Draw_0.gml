if (!fadeout) {
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, image_alpha);
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale * -1, image_yscale, image_angle, -1, image_alpha);
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale * -1, image_yscale * -1, image_angle, -1, image_alpha);
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale * -1, image_angle, -1, image_alpha);
    draw_set_blend_mode(bm_normal);
}
draw_set_blend_mode(bm_add);
draw_set_color(c_white);
draw_set_alpha(whitealpha);
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), false);
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);

