draw_sprite_ext(sprite_index, spr_num, x + 152, y + 20, 1, 1, -image_angle, -1, 1);
draw_sprite_ext(sprite_index, spr_num, x + 152, y + 60, 1, -1, image_angle, -1, 1);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sA3DrillLights, -1, x + 54, y, 1, 1, 0, -1, image_alpha);
draw_sprite_ext(sA3DrillLights, -1, x + 89, y, 1, 1, 0, -1, image_alpha);
draw_set_blend_mode(bm_normal);

