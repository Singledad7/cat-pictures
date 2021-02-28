if (type == "ICE" && split == 1) {
    /*var proj1 = instance_create(x, y, oTankProjectile);
    proj1.direction = 315;
    proj1.image_angle = 315;
    proj1.type = "ICE";
    proj1.split = 0;
    proj1.speed = 4;
    proj1.phase = 30;
    //proj1.sprite_index = sTankProj3;
    var proj2 = instance_create(x, y, oTankProjectile);
    proj2.direction = 225;
    proj2.image_angle = 225;
    proj2.type = "ICE";
    proj2.split = 0;
    proj2.speed = 4;
    proj2.phase = 30;
    //proj2.sprite_index = sTankProj3;*/
    for (var i = 1; i < 5; i++) {
        var proj = instance_create(x, y, oTankProjectile);
        proj.direction = (i*90) - 45;
        proj.image_angle = (i*90) - 45;
        proj.type = "ICE";
        proj.split = 0;
        proj.speed = 4;
        proj.phase = 5;
        proj.sprite_index = sTankProj2;
        
    }
}
expl = instance_create(x, y, oFXAnimSpark);
expl.image_speed = 0.5;
expl.additive = 0;
switch (type) {
    case "PLASMA": expl.sprite_index = sPBeamExpl; break;
    case "ICE": expl.sprite_index = sIBeamExpl; break;
    case "WAVE": expl.sprite_index = sWBeamExpl; break;
}
PlaySoundMono(sndProjHit2);
instance_destroy();

/* */
/*  */
