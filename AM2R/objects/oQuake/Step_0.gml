if (global.ingame) {
    if (delay > 0) {
        delay -= 1;
    } else shaking = 1;
    if (shaking) {
        if (global.classicmode == 0) {
            __view_set( e__VW.XPort, 0, round(random(intensity)) );
            __view_set( e__VW.YPort, 0, round(random(intensity)) );
            oControl.xShake = round(random(intensity));
            oControl.yShake = round(random(intensity));
        }
        if (global.classicmode == 1) {
            __view_set( e__VW.XPort, 0, 80 + round(random(intensity)) );
            __view_set( e__VW.YPort, 0, 40 + round(random(intensity)) );
            oControl.xShake = 80 + round(random(intensity));
            oControl.yShake = 40 + round(random(intensity));
        }
        duration -= 1;
        if (duration <= 0) event_user(0);
    }
}

