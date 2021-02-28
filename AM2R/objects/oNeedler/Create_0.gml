action_inherited();
frozenspr = sNeedlerFrozen;
myhealth = 12;
image_index = irandom_range(0,sprite_get_number(sprite_index));
if (oControl.mod_randomgamebool == 1 && (global.wbeam == 0 || global.sbeam == 0 || global.pbeam == 0)){
    freezehp = floor(myhealth * .15);
    if (freezehp < 1) freezehp = 1;
} //nerfed frozen enemies in random games

