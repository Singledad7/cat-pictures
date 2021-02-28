switch (floor(image_angle)) {
    case 180: {
        image_yscale = -1;
        break;
    }
    case 270:
    case 90: {
        sprite_index = skorp_get_lure(sSkorpLureUpR);
        break;
    }
    default: {
        // do things
        break;
    }
}

for (var i = 0; i < 32; i++) {
    if (collision_point(x, y, oSolid, false, false)) {
        x += lengthdir_x(1, image_angle);
        y += lengthdir_y(1, image_angle);
    } else {
        x -= lengthdir_x(1, image_angle);
        y -= lengthdir_y(1, image_angle);
        break;
    }
}
startx = x;
starty = y;

