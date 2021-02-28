if (global.screwattack == 0)
{    
    with inst_111771 y += 50;
    with inst_111772 y += 50;
    with inst_111773 y += 50;
    instance_create(48, 320, oBlockSpeed);
    instance_create(48, 336, oBlockSpeed);
    instance_create(48, 352, oBlockSpeed);
}
instance_destroy();





/*
if (global.screwattack == 0) instance_destroy();
{
    with (instance_nearest(32, 368, oSolid1)) { instance_destroy(); }
    with (instance_nearest(160, 432, oSolid1)) { instance_destroy(); }
    with (instance_nearest(160, 448, oSolid1)) { instance_destroy(); }
}
*/

/* */
/*  */
