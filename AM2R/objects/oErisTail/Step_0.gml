if (oEris.boosting) {
    var aft = instance_create(x,y,oFXTrail);
    aft.sprite_index = oErisTail;
    aft.depth = depth + 5;
    aft.fadespeed = 0;
    aft.image_angle = image_angle;
    aft.image_xscale = image_xscale;
    aft.image_yscale = image_yscale;
    aft.additive = 0;
}

