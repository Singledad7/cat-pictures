if (!fadeout) {
    if (image_alpha < 1) image_alpha += 0.1;
} else if (image_alpha > 0) {
    image_alpha -= 0.05;
} else instance_destroy();
x = __view_get( e__VW.XView, 0 ) + 4;
y = __view_get( e__VW.YView, 0 ) + 230;

