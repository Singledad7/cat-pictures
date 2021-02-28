event_inherited();
if (attack) {
    frz.spr1 = sSkorpDiscFrozen;
    frz.spr2 = sSkorpDiscFrozen;
} else {
    frz.spr1 = sSkorpDiscLungeFrozen;
    frz.spr2 = sSkorpDiscLungeFrozen;
}
frz.spr1xoff = lengthdir_x(len, dir);
frz.spr1yoff = lengthdir_y(len, dir);
frz.spr2xoff = lengthdir_x(len, -dir);
frz.spr2yoff = lengthdir_y(len, -dir);
frz.spr2xs = -1;

