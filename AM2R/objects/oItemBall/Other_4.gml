//if (global.item[item]) instance_destroy();

if (global.item[item])
{   
    myposx = floor(x / 320);
    myposy = floor((y - 8) / 240);
    mapposx = myposx + global.mapoffsetx;
    mapposy = myposy + global.mapoffsety;
    //global.dmap[mapposx, mapposy] = 2;
    if distance_to_object(oItem) > 180 { global.dmap[mapposx, mapposy] = 2; }
    instance_destroy(); //original
}

if (room_get_name(room) == "rm_a2a07") { image_speed = 0; }

