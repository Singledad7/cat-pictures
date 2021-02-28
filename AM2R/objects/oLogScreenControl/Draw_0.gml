draw_background(pic[logobj[global.curropt].logid, global.log[logobj[global.curropt].logid] - 1], (__view_get( e__VW.WView, 0 ) / 2) + 1 + (widescreen_space), (__view_get( e__VW.YView, 0 ) + 52));
if (expanded || (!expanded && (x > (targetx + 1)))) {
    if (surface_exists(surf)) {
        //draw_set_alpha(min(max(, 0), 1));
        draw_set_alpha((x-drawtarg)/drawtarg);
        draw_surface(surf, (__view_get( e__VW.WView, 0 ) / 2) + 150 + (widescreen_space), __view_get( e__VW.YView, 0 ) + 52);
        draw_set_alpha(1);
    }
}
if (expanded) {
    if (scroll) {
        if (currentline > 0) draw_sprite_ext(sLogScroll, 1, __view_get( e__VW.WView, 0 ) / 2 + 294 + (2*(widescreen_space)), __view_get( e__VW.YView, 0 ) + 56, 1, -1, 0, -1, 1);
        if (currentline < lines) draw_sprite(sLogScroll, 1, __view_get( e__VW.WView, 0 ) / 2 + 294 + (2*(widescreen_space)), __view_get( e__VW.YView, 0 ) + 185);
    }
}

