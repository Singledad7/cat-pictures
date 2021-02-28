if (global.ingame) {
    if (shaking) {
        if (global.classicmode == 0) {
            __view_set( e__VW.XPort, 0, round(random(3)) );
            __view_set( e__VW.YPort, 0, round(random(3)) );
            oControl.xShake = round(random(3));
            oControl.yShake = round(random(3));
        }
        if (global.classicmode == 1) {
            __view_set( e__VW.XPort, 0, 80 + round(random(3)) );
            __view_set( e__VW.YPort, 0, 40 + round(random(3)) );
            oControl.xShake = 80 + round(random(3));
            oControl.yShake = 40 + round(random(3));
        }
    }
    time += 0.2/(1+global.sensitivitymode); // 1.5.1
    screenalpha = cos(time) * 0.5/(1+global.sensitivitymode);
}

