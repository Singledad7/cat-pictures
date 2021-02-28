event_inherited();
image_speed = 0;

tileid = -1;
tilesandcrn0 = -1;
tilesandcrn1 = -1;
tilesandcrn2 = -1;
tilesandcrn3 = -1;


//Sand Fix
pos = string(x)+","+string(y);
//tileid = string_copy(global.sandarray[x,y], 1, 2);

if(room!=rm_a3h04) event_user(1);
else alarm[2] = 1;

//In case of emergency, cause both event_user(1) and alarm[2] to activate if in rm_a3ho4. Also mess with oTestKeys W key event, and oBlockSand alarm 2.

