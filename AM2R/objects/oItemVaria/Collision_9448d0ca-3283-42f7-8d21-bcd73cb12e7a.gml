event_inherited();
global.SuitChange = true;
if(collision_line(x + 8, y - 8, x + 8, y - 32, oSolid, false, true)) global.SuitChange = false;
if(!collision_point(x + 8, y + 8, oSolid, false, true)) global.SuitChange = false;
global.SuitChangeX = x;
global.SuitChangeY = y;
global.SuitChangeGravity = false;
if (active) with (oCharacter) alarm[1] = 1;

