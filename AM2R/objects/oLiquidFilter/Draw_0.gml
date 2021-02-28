if (global.watertype == false && instance_exists(oWater)) {
    draw_set_blend_mode(bm_subtract);
    draw_set_color(make_color_rgb(200, 200, 0));
    draw_rectangle(__view_get( e__VW.XView, 0 ), global.waterlevel + oWater.yoffset, __view_get( e__VW.XView, 0 ) + 320, __view_get( e__VW.YView, 0 ) + 250, false);
    draw_set_blend_mode(bm_add);
    draw_set_color(make_color_rgb(10, 10, 45));
    draw_rectangle(__view_get( e__VW.XView, 0 ), global.waterlevel + oWater.yoffset, __view_get( e__VW.XView, 0 ) + 320, __view_get( e__VW.YView, 0 ) + 250, false);
    draw_set_blend_mode(bm_normal);
}

