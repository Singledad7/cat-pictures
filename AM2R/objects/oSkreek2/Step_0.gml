action_inherited();
//enemy_active_check(80);
enemy_target_check(128, 1);

// Trap launch
if ((trigger != 0) && (launch == 0)) {
    target = 0;
} else if (launch == trigger) {
    enemy_target_check(128, 1);
} else if (trigger != 0) {
    target = 0;
}


if (stun == 0 && frozen == 0) {
    if (state == 0) {
        canbehit = 0;
        hitscrewattack = 0;
        if (irandom(50) == 1) {
            var bubble = instance_create(x, y, oLBubble);
            if (instance_exists(bubble)) {
                bubble.hspeed = random_range(-1, 1);
                bubble.vspeed = -random(0.4);
            }
        }
    }
    if ((target == 1) && (state == 0) && (cooldown <= 0)) {
        canbehit = 1;
        hitscrewattack = 1;
        if (x >= oCharacter.x) {
            facing = -1;
            image_angle = 270;
        }
        if (x < oCharacter.x) {
            facing = 1;
            image_angle = 90;
        }
        vspeed = -6;
        state = 1;
    }
    if (state == 1) {
        vspeed += 0.12;
        if ((vspeed >= -2.8) && (floor(image_angle) != abs(180*(sign(facing)-1)))) {
            image_angle -= sign(facing)*5; //lerp(image_angle, 90*abs(sign(facing)-1), 0.1);
            if (spit == 0) {
                sprite_index = sSkreekA6_spit;
                frozenspr = sSkreekA6_spit_frozen;
                //image_speed = 0.1;
                image_index = 0;
                spit = 1;
            }
        }
        if ((spit >= 1) && (vspeed >= 0.6) && (spit < 27)) {
            spit ++;
            if (((spit mod 13) == 0) && (image_index > 2)) {
                    var proj = instance_create(x, y, oSkreekSpit);
                    proj.speed = 3;
                    proj.direction = 90*abs(sign(facing)-1);
                    proj.image_angle = proj.direction;
 
                /*else { // hard/fusion spit THIS DIDN'T WORK
                    var proj = instance_create(x, y, oSkreekSpit);
                    proj.speed = 3;
                    proj.direction = (90*abs(sign(facing)-1)) + 15;
                    proj.image_angle = proj.direction;
                    //proj.image_xscale = facing;
                    var proj2 = instance_create(x, y, oSkreekSpit);
                    proj2.speed = 3;
                    proj2.direction = (90*abs(sign(facing)-1)) - 15;
                    proj2.image_angle = proj2.direction;
                    //proj2.image_xscale = facing;

                }*/
            }
        }
    }
    if ((y > ystart) && (state != 0)) { // return to waiting phase
        sprite_index = sSkreekA6;
        frozenspr = sSkreekA6_frozen;
        image_speed = 0.2;
        vspeed = 0;
        y = ystart;
        cooldown = 60;
        state = 0;
        spit = 0;
    }
} else speed = 0;

if (cooldown > 0) {
    cooldown --;
}
if (state == 100) enemy_death();

/* */
/*  */
