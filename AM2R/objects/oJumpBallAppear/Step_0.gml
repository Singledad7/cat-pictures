if (fadein) {
    if (image_alpha < 1) {
        image_alpha += 0.05;
    } else {
        instance_create(x, y, oItemJumpBall);
        //instance_create(x, y, scr_itemsopen(3));
        
        instance_destroy();
    }
}

