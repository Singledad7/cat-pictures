// - Emergency code for regenerating sand tile maps

/*ds_map_add(global.sand_map,pos,image_index);
ds_map_add(global.sandcrn0_map,pos,tilesandcrn0);
ds_map_add(global.sandcrn1_map,pos,tilesandcrn1);
ds_map_add(global.sandcrn2_map,pos,tilesandcrn2);
ds_map_add(global.sandcrn3_map,pos,tilesandcrn3);
*/

// - Normal event code begins here

tileid = tile_add(tlSandBlocks, ds_map_find_value(global.sand_map, pos)*16, 0, 16, 16, x, y, -100);

if (ds_map_find_value(global.sandcrn0_map, pos)) tilesandcrn0 = tile_add(tlSandCorners, 0*16, 0, 16, 16, x, y, -101);
if (ds_map_find_value(global.sandcrn1_map, pos)) tilesandcrn1 = tile_add(tlSandCorners, 1*16, 0, 16, 16, x, y, -101);
if (ds_map_find_value(global.sandcrn2_map, pos)) tilesandcrn2 = tile_add(tlSandCorners, 2*16, 0, 16, 16, x, y, -101);
if (ds_map_find_value(global.sandcrn3_map, pos)) tilesandcrn3 = tile_add(tlSandCorners, 3*16, 0, 16, 16, x, y, -101);

/* */
/*  */
