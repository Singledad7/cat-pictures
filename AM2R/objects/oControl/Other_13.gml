
if (!surface_exists(screen_surface)) screen_surface = surface_create(512+widescreen_space, 256);
surface_set_target(screen_surface);
draw_clear(c_black);

if(widescreen) {
    if (surface_exists(widescreen_surface)) {
        draw_surface(widescreen_surface, 0, 0);
    }
} else {
    draw_surface(application_surface, 0, 0);
}
    
surface_reset_target();
if (os_is_native) {
    var __surf = -1;
    
    if(widescreen) {
        if (surface_exists(widescreen_surface)) {
            __surf = widescreen_surface;
            
        }
    }
    else {
        __surf = application_surface;
    }
    
    if (__surf != -1) {
        if (sprite_exists(tempscr)) {
            writelog("screenshot freed. (user event 3)");
            sprite_delete(tempscr);
        }
        
        tempscr = sprite_create_from_surface(__surf, 0, 0, surface_get_width(__surf), surface_get_height(__surf), false, false, 0, 0);
        writelog("screenshot created.");
    }
    else {
        writelog("screenshot wtf?");
    }
}


