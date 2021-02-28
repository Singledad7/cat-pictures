if (surface_exists(screen_surface)) {
    surface_free(screen_surface);
}
if (os_is_native) {
    if (sprite_exists(tempscr)) {
        writelog("screenshot freed. (user event 4)");
        sprite_delete(tempscr);
    }
}

