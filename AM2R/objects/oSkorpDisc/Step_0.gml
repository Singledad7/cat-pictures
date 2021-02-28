if (spin) {
    //if (rotspeed < 30) rotspeed += 1;
    if (sprite_index == sSkorpDiscLunge) {
        //sfx_stop(sndSkorpBlade);
        image_index += 0.2;
        if (image_index > 2.8) {
            sprite_index = sSkorpDisc;
        }
    }
    if (sprite_index == sSkorpDisc) {
        //if !sfx_isplaying(sndSkorpBlade) sfx_loop(sndSkorpBlade);
        image_index += 0.4;
    }
} else if (sprite_index == sSkorpDisc) { //if (rotspeed > 0) rotspeed -= 0.5;
    image_index = 2;
    sprite_index = sSkorpDiscLunge;
} else if (sprite_index == sSkorpDiscLunge && image_index > 0.2) {
    //sfx_stop(sndSkorpBlade);
    image_index -= 0.1;
}

//image_angle += rotspeed * image_xscale;
//if (image_angle > 360) image_angle -= 360;
//if (image_angle < -360) image_angle += 360;

