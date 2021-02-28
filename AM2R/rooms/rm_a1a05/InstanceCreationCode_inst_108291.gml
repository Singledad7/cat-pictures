//The original items are not used at all. They are just kept in the rooms for reference points.

instance_destroy();
itemid = 108;
itemidOriginal = itemid;
itemid = oControl.mod_108;
if (oControl.mod_108 != itemidOriginal) { src_items_rando(itemid); }
scr_item_create_text();
