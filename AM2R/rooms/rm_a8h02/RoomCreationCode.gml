global.mapoffsetx = 33;
global.mapoffsety = 5;
global.waterlevel = 0;
global.floormaterial = 1;

instance_create(24, 160, scr_itemsopen(oControl.mod_58));

var inst;
for (i=0; i<instance_number(oSolid); i+=1) {
    inst = instance_find(oSolid, i);
        switch (inst.object_index) {
            case oSolid1: with(inst) instance_change(oSolid1Grass, true); break;
            case oSlope1: with(inst) instance_change(oSlope1Grass, true); break;
            case oSlope2: with(inst) instance_change(oSlope2Grass, true); break;
            case oSlope1B: with(inst) instance_change(oSlope1BGrass, true); break;
            case oSlope2B: with(inst) instance_change(oSlope2BGrass, true); break;
    }
}