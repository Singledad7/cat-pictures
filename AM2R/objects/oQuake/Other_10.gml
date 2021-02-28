if (global.classicmode == 0) {
    __view_set( e__VW.XPort, 0, 0 );
    __view_set( e__VW.YPort, 0, 0 );
    oControl.xShake = 0;
    oControl.yShake = 0;
}
if (global.classicmode == 1) {
    __view_set( e__VW.XPort, 0, 80 );
    __view_set( e__VW.YPort, 0, 40 );
    oControl.xShake = 0;
    oControl.yShake = 0;
}
instance_destroy();

