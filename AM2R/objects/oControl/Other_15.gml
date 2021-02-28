if (global.ingame) {
    if (surface_exists(gui_surface)) {
        if (global.ingame && displaygui && room != rm_transition && instance_exists(oCharacter)) {
            //draw_surface_ext(gui_surface, displayx - d[0], displayy - d[1], display_scale, display_scale, 0, -1, 1);
            /*if (!global.opfullscreen) {
                draw_surface_ext(gui_surface, ((displayx - d[0])*abs(widescreen-1)) - floor((widescreen_space/2)*display_scale), displayy - d[1], display_scale, display_scale, 0, -1, 1);
            } else {*/
                draw_surface_ext(gui_surface, displayx, displayy, display_scale, display_scale, 0, -1, 1);
            
            //}
        }
    }
}

//draw_text(4, 32, "Gamepad Index: " + string(global.gamepadIndex));
//draw_text(4, 48, "Control Type: " + string(global.controltype));


if (black > 0) {
    draw_set_alpha(1);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
}

/* */
/*  */
