draw_self();
draw_set_blend_mode(bm_add);
repeat (2) {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, -1, glowing/40);
}
draw_set_blend_mode(bm_normal);

