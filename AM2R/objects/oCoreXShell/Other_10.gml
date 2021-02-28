/// @description  Create debris when destryoed. 

deb = instance_create(x-15, y-14, oDebris);
deb.image_angle = 0;
deb.sprite_index = sCoreXShellFrag;
deb.image_index = 0;
deb.direction = 135;
deb.speed = 1 + random_range(-0.1, 0.1);
deb.gravity = 0.5 + random_range(-0.1, 0.1);
deb.depth = -155;
deb.playsound = 0;
deb.rotspeed = 4;
deb.canbounce = 0;
deb.alarm[0] = 30;
deb.alarm[1] = -1;

deb = instance_create(x+15, y-14, oDebris);
deb.image_angle = 0;
deb.sprite_index = sCoreXShellFrag;
deb.image_index = 1;
deb.direction = 45;
deb.speed = 1 + random_range(-0.1, 0.1);
deb.gravity = 0.5 + random_range(-0.1, 0.1);
deb.depth = -155;
deb.playsound = 0;
deb.rotspeed = -4;
deb.canbounce = 0;
deb.alarm[0] = 30;
deb.alarm[1] = -1;

deb = instance_create(x+15, y+14, oDebris);
deb.image_angle = 0;
deb.sprite_index = sCoreXShellFrag;
deb.image_index = 2;
deb.direction = 0;
deb.speed = 0.5 + random_range(-0.1, 0.1);
deb.gravity = 0.5 + random_range(-0.1, 0.1);
deb.depth = -155;
deb.playsound = 0;
deb.rotspeed = 2;
deb.canbounce = 0;
deb.alarm[0] = 30;
deb.alarm[1] = -1;

deb = instance_create(x-15, y+14, oDebris);
deb.image_angle = 0;
deb.sprite_index = sCoreXShellFrag;
deb.image_index = 3;
deb.direction = 180;
deb.speed = 0.5 + random_range(-0.1, 0.1);
deb.gravity = 0.5 + random_range(-0.1, 0.1);
deb.depth = -155;
deb.playsound = 0;
deb.rotspeed = 2;
deb.canbounce = 0;
deb.alarm[0] = 30;
deb.alarm[1] = -1;


bld = instance_create(x+4, y+4, oFXAnimSpark);
bld.sprite_index = sCoreXBlood;
bld.image_speed = 0.35 + random_range(-0.075, 0.075);
bld.image_alpha = 0.8;
bld.image_angle = 45 + irandom_range(-15, 15);
bld.image_xscale = 1;
bld.image_yscale = 1;

bld = instance_create(x+4, y+4, oFXAnimSpark);
bld.sprite_index = sCoreXBlood;
bld.image_speed = 0.35 + random_range(-0.075, 0.075);
bld.image_alpha = 0.8;
bld.image_angle = 135 + irandom_range(-15, 15);
bld.image_xscale = 1;
bld.image_yscale = 1;

bld = instance_create(x+4, y+4, oFXAnimSpark);
bld.sprite_index = sCoreXBlood;
bld.image_speed = 0.35 + random_range(-0.075, 0.075);
bld.image_alpha = 0.8;
bld.image_angle = 315 + irandom_range(-15, 15);
bld.image_xscale = 1;
bld.image_yscale = 1.25;

bld = instance_create(x+4, y+4, oFXAnimSpark);
bld.sprite_index = sCoreXBlood;
bld.image_speed = 0.35 + random_range(-0.075, 0.075);
bld.image_alpha = 0.8;
bld.image_angle = 225 + irandom_range(-15, 15);
bld.image_xscale = 1;
bld.image_yscale = 1;

if (global.waterlevel != 0) {
    repeat (20) {
        bubble = instance_create(x, y, oLBubble);
        if (instance_exists(bubble)) {
            bubble.hspeed = random_range(-2.5, 2.5);
            bubble.vspeed = -random(0.4);
        }
    }
}

