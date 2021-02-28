if ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) >= (global.waterlevel + yoffset)) {
    i = 0;
    draw_set_color(make_colour_rgb(10, 10, 80));
    draw_set_blend_mode(bm_add);

    draw_rectangle(__view_get( e__VW.XView, 0 ) - (widescreen_space/2), global.waterlevel + oWater.yoffset, __view_get( e__VW.XView, 0 ) + 320 + widescreen_space/2, __view_get( e__VW.YView, 0 ) + 250, false);
    
    repeat ((room_width / 32) + 1 + (4*widescreen)) {
        if (((i * 32) >= (__view_get( e__VW.XView, 0 ) - 33 - (widescreen_space/2))) && ((i * 32) < (__view_get( e__VW.XView, 0 ) + 360 + (widescreen_space))) && global.waterlevel + yoffset + 224 > __view_get( e__VW.YView, 0 )) draw_background_ext(bg, x + i * 32 + xoffset - (widescreen_space/2), global.waterlevel + yoffset, 1, 1, 0, -1, spr_alpha);
        i += 1;
    }

    draw_set_blend_mode(bm_normal);
}

