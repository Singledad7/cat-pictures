block = instance_create(x, y, oDestroyedBlock);
block.type = 1;
block.regentime = regentime;
block.alarm[0] = regentime;
block.link_id = link_id;
block.delay = delay;
with (block) event_user(1);
if (global.item[oControl.mod_158] == 0) {
    instance_create(x, y + 16, scr_itemsopen(oControl.mod_158));
    //item = instance_create(x, y + 16, oItemEnergyTank);
    //item = scr_itemsopen(158);
    //item.itemid = oControl.mod_158;
    //with (item) src_items_rando(itemid);
    //with (item) scr_item_create_text();
    
   
}
sfx_stop(sndBlockDestroy);
sfx_play(sndBlockDestroy);
instance_destroy();

