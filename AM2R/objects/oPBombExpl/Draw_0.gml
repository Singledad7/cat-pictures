draw_set_blend_mode(bm_add);
if (global.sensitivitymode) {
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, image_alpha); // alpha2 creates the flicker
} else {
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, image_alpha * (1 - alpha2 * 0.2));
}
draw_set_blend_mode(bm_normal);

