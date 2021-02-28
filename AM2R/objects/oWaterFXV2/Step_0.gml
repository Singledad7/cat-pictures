if (instance_exists(oWater)) {
    y = global.waterlevel + oWater.yoffset;
} else if (instance_exists(oLavaSurface)) {
    y = global.waterlevel;
}

y_top = y - __view_get( e__VW.YView, 0 );
y_top = clamp(y_top, 0, __view_get( e__VW.HView, 0 ));
y_bottom = __view_get( e__VW.HView, 0 );
THETA += SPEED;
if ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) >= y) {
    if (!surface_exists(mysurf)) mysurf = surface_create(320 + (oControl.widescreen*oControl.widescreen_space), 240);
    
    if (surface_exists(oControl.widescreen_surface)) {
        surface_copy(mysurf, 0, 0, oControl.widescreen_surface);
    } else if (surface_exists(application_surface)) {
        surface_copy(mysurf, 0, 0, application_surface);
    }
}

