
if(oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0) {
    pal_swap_set(oControl.QueenPalette, 2, false);
}

if (!flashing) {
    draw_sprite(spr_leg4, -1, joint3_x, joint3_y);
    draw_sprite_ext(spr_leg3, -1, joint3_x, joint3_y, joint3_scale, 1, joint3_angle, -1, 1);
    draw_sprite_ext(spr_leg2, -1, joint1_x, joint1_y, joint1_scale, 1, joint1_angle, -1, 1);
    draw_sprite_ext(spr_leg1, -1, joint0_x, joint0_y, 1, 1, image_angle, -1, 1);
    draw_sprite(spr_foot, -1, x, y);
} else {
    // Some code was shifted around here to prevent alpha blending bugs
    draw_sprite_ext(spr_leg4, -1, joint3_x, joint3_y, 1, 1, 0, make_color_rgb(255 - fxtimer * 63, 255 - fxtimer * 63, 255 - fxtimer * 63), 1);
    draw_set_blend_mode(bm_add);
    repeat (2) {
        draw_sprite_ext(spr_leg4, -1, joint3_x, joint3_y, 1, 1, 0, -1, 1 - fxtimer * 0.25);
    }
    draw_set_blend_mode(bm_normal);
    
    draw_sprite_ext(spr_leg3, -1, joint3_x, joint3_y, joint3_scale, 1, joint3_angle, make_color_rgb(255 - fxtimer * 63, 255 - fxtimer * 63, 255 - fxtimer * 63), 1);
    draw_set_blend_mode(bm_add);
    repeat (2) {
        draw_sprite_ext(spr_leg3, -1, joint3_x, joint3_y, joint3_scale, 1, joint3_angle, -1, 1 - fxtimer * 0.25);
    }
    draw_set_blend_mode(bm_normal);
    
    draw_sprite_ext(spr_leg2, -1, joint1_x, joint1_y, joint1_scale, 1, joint1_angle, make_color_rgb(255 - fxtimer * 63, 255 - fxtimer * 63, 255 - fxtimer * 63), 1);
    draw_set_blend_mode(bm_add);
    repeat (2) {
        draw_sprite_ext(spr_leg2, -1, joint1_x, joint1_y, joint1_scale, 1, joint1_angle, -1, 1 - fxtimer * 0.25);
    }
    draw_set_blend_mode(bm_normal);
    
    draw_sprite_ext(spr_leg1, -1, joint0_x, joint0_y, 1, 1, image_angle, make_color_rgb(255 - fxtimer * 63, 255 - fxtimer * 63, 255 - fxtimer * 63), 1);
    draw_set_blend_mode(bm_add);
    repeat (2) {
        draw_sprite_ext(spr_leg1, -1, joint0_x, joint0_y, 1, 1, image_angle, -1, 1 - fxtimer * 0.25);
    }
    draw_set_blend_mode(bm_normal);
    
    draw_sprite_ext(spr_foot, -1, x, y, 1, 1, 0, make_color_rgb(255 - fxtimer * 63, 255 - fxtimer * 63, 255 - fxtimer * 63), 1);
    draw_set_blend_mode(bm_add);
    repeat (2) {
        draw_sprite_ext(spr_foot, -1, x, y, 1, 1, 0, -1, 1 - fxtimer * 0.25);
    }
    draw_set_blend_mode(bm_normal);
}

shader_reset();

