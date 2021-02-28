if (fadein) {
    if (image_alpha < 1) {
        image_alpha += 0.05;
    } else fadein = 0;
}
if(os_type == os_android && os_is_paused()) alarm[0]=1;
if (!surface_exists(oControl.screen_surface)) {
    oControl.screen_surface = surface_create(512+oControl.widescreen_space, 256);
    s_bg = sprite_duplicate(oControl.tempscr);
    
    surface_set_target(oControl.screen_surface);
    draw_clear(c_black);
    if (sprite_exists(s_bg)) {
        draw_sprite(s_bg, 0, 0, 0);
    }
    surface_reset_target();
    
    if (sprite_exists(s_bg)) {
        sprite_delete(s_bg);
    }
}

