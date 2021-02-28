image_alpha -= 0.05;
if (image_alpha <= 0) instance_destroy();
if (speed > 6) speed = 6;
if (y < __view_get( e__VW.YView, 0 ) - 120) instance_destroy();

