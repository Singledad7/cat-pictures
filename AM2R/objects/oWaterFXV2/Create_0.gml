FREQ = 8;
AMP = 2;
SPEED = 0.05;
THETA = 0;
y_bottom = y - __view_get( e__VW.YView, 0 );
if (y_bottom < 0) y_bottom = 0;
if (y_bottom > __view_get( e__VW.HView, 0 )) y_bottom = __view_get( e__VW.HView, 0 );
mysurf = surface_create(320 + (oControl.widescreen*oControl.widescreen_space), 240);

