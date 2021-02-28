draw_sprite(sprite_index, -1, x, y);
draw_sprite_ext(sShipGlow, 0, x, y, 1, 1, 0, -1, balpha);
/*
draw_set_blend_mode(bm_add);
draw_background_ext(bgShipBoosterMid, x - 20, y + 49, 1, 1, 0, -1, balpha);
draw_background_ext(bgShipBoosterMid, x + 19, y + 49, -1, 1, 0, -1, balpha);
draw_background_ext(bgShipBoosterSide, x - 65, y + 49, 1, 1, 0, -1, balpha);
draw_background_ext(bgShipBoosterSide, x + 64, y + 49, -1, 1, 0, -1, balpha);
draw_set_blend_mode(bm_normal);

/* */
/*  */
