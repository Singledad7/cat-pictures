if ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) >= (global.waterlevel + yoffset) - 9) {
    i = 0;
    draw_set_blend_mode(bm_add);
    draw_background_ext(bgLava0, x - (oControl.widescreen_space/2), y - 9 + background_get_height(bg) + yoffset, room_width / (10 - (2*oControl.widescreen)), room_height / 10, 0, -1, 0.6);
    for (var i = 0; i < room_width + widescreen_space; i += 32) {
        if((x + i >= __view_get( e__VW.XView, 0 ) - 33) && (x + i < __view_get( e__VW.XView, 0 ) + 360 + widescreen_space) && (global.waterlevel + yoffset + 15) > __view_get( e__VW.YView, 0 )) draw_background_ext(bg, x + i - (widescreen_space/2), y - 9 + yoffset, 1, 1, 0, -1, 0.8);
    }
    draw_set_blend_mode(bm_normal);
}

