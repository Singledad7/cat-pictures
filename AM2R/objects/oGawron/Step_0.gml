action_inherited();
if (active == 1 && stun == 0 && frozen == 0) {
    if (state == 0) {
        image_speed = 0.15; // og 0
        image_index = 1;
        vspeed = -3;
        state = 1;
    }
    if (state == 1) {
        vspeed = -3;
        if (y <= oCharacter.y - 26) state = 2; // og oCharacter.y - 30
        //if (vspeed < 0) vspeed += 0.02;
    }
    if (state == 2) {
        image_speed = 0.2; // OG 0.4
        vspeed = 0;
        hspeed = facing * 2.5;
    }
} else speed = 0;
if (state == 100) enemy_death();

