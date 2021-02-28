if (!fadeout) {
    if (image_alpha < max_alpha) image_alpha += 0.02;
} else if (image_alpha > 0) {
    image_alpha -= 0.02;
} 
if (image_alpha < 0) { // fix for YYC
    instance_destroy();
}


