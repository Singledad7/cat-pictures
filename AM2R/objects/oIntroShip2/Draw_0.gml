var b1x, b1y, b2x, b2y;
draw_self();
draw_sprite_ext(sprite_index, -1, x, y, image_xscale * -1, image_yscale, image_angle, image_blend, image_alpha);
b1x = lengthdir_x(21, image_angle - 20) * image_xscale;
b1y = lengthdir_y(21, image_angle - 20) * image_yscale;
b2x = lengthdir_x(21, image_angle - 180 + 20) * image_xscale;
b2y = lengthdir_y(21, image_angle - 180 + 20) * image_yscale;
draw_set_blend_mode(bm_add);
draw_background_ext(bgIntroShipBoost, x + b1x, y + b1y, image_xscale, image_yscale, 0, -1, 1 - fxtimer * 0.3);
draw_background_ext(bgIntroShipBoost, x + b1x, y + b1y, -image_xscale, image_yscale, 0, -1, 1 - fxtimer * 0.3);
draw_background_ext(bgIntroShipBoost, x + b1x, y + b1y, image_xscale, -image_yscale, 0, -1, 1 - fxtimer * 0.3);
draw_background_ext(bgIntroShipBoost, x + b1x, y + b1y, -image_xscale, -image_yscale, 0, -1, 1 - fxtimer * 0.3);
draw_background_ext(bgIntroShipBoost, x + b2x, y + b2y, image_xscale, image_yscale, 0, -1, 1 - fxtimer * 0.3);
draw_background_ext(bgIntroShipBoost, x + b2x, y + b2y, -image_xscale, image_yscale, 0, -1, 1 - fxtimer * 0.3);
draw_background_ext(bgIntroShipBoost, x + b2x, y + b2y, image_xscale, -image_yscale, 0, -1, 1 - fxtimer * 0.3);
draw_background_ext(bgIntroShipBoost, x + b2x, y + b2y, -image_xscale, -image_yscale, 0, -1, 1 - fxtimer * 0.3);
draw_set_blend_mode(bm_normal);

