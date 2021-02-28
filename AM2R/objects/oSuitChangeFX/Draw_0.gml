draw_set_color(c_black);
draw_set_alpha(bg1alpha);
draw_rectangle(__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 325  + (oControl.widescreen_space/2), __view_get( e__VW.YView, 0 ) + 245, false);
if (state > 0 && state < 4) {
    with(oEnemy) {
        if(point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ) - 80, __view_get( e__VW.YView, 0 ) - 60, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 80, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 60)) {
            instance_destroy();
        }
    }
}
if (state > 0 && state < 4) draw_sprite(sprite_index, 1, x, y);
if (state > 0 && state < 4) {
    if (yoffset > 0) {
        if(global.currentsuit == 0) draw_sprite_part(sprite_index, 0, 0, 0, 24, yoffset, x - 12, y - 40);
        else draw_sprite_part(sprite_index, 1, 0, 0, 24, yoffset, x - 12, y - 40);
    }
} 
if (drawenergy) {
    draw_set_blend_mode(bm_add);
    draw_sprite(sSuitChangeFX1, eframe, x, y - 40 + yoffset);
    draw_set_blend_mode(bm_normal);
}
draw_set_color(c_black);
draw_set_alpha(bg2alpha);
draw_rectangle(__view_get( e__VW.XView, 0 ) - (oControl.widescreen_space/2), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 325 + (oControl.widescreen_space/2), __view_get( e__VW.YView, 0 ) + 245, false);
draw_set_color(c_white);
draw_set_alpha(bg3alpha);
draw_rectangle(x - xoffset, __view_get( e__VW.YView, 0 ), x + xoffset, __view_get( e__VW.YView, 0 ) + 245, false);

