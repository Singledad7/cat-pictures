image_speed = 0.5;
fade = 0;
moveplayer = 0;
facing = 1;
state = 0;
whitefade = 0;
if (oControl.mod_fusion == 1) sprite_index = sPlayerDeath_fusion;
if (instance_exists(oCharacter)) {
    if (oCharacter.mirror == 1) sprite_index = sDeathR;
    if (oCharacter.mirror == -1) sprite_index = sDeathL;
    x = oCharacter.x - __view_get( e__VW.XView, 0 );
    y = oCharacter.y - __view_get( e__VW.YView, 0 );
    facing = oCharacter.mirror;
}
remove_persistent_objects();

