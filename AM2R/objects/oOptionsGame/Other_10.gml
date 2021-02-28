//This list needs to be in order. It won't work correctly otherwise.

sep = 16;
op[50] = instance_create(x, y, oMenuLabel);
op[50].text = get_text("GameplayMenu", "Title_Gameplay");

var tempcount = 1;

op[num_seed] = instance_create(x, y + sep * tempcount++, oOptionSeed);
op[num_seed].label = get_text("GameplayMenu", "CustomSeed");
op[num_seed].optionid = num_seed;

op[num_useSeed] = instance_create(x, y + sep * tempcount++, oOptionLR);
op[num_useSeed].label = get_text("GameplayMenu", "UseSeed");
op[num_useSeed].optionid = num_useSeed;

op[num_elm] = instance_create(x, y + sep * tempcount++, oOptionLR);
op[num_elm].label = get_text("ExtrasMenu", "ExtremeMonsters");
op[num_elm].optionid = num_elm;

op[num_insanity] = instance_create(x, y + sep * tempcount++, oOptionLR);
op[num_insanity].label = get_text("GameplayMenu", "InsanityMode");
op[num_insanity].optionid = num_insanity;

/*
op[num_exmonsters] = instance_create(x, y + sep * tempcount++, oOptionLR);
op[num_exmonsters].label = get_text("ExtrasMenu", "ExtremeMonsters");
op[num_exmonsters].optionid = num_exmonsters;
if (global.mod_gamebeaten == 0) {
    op[num_exmonsters].enabled = 0;
    canedit[num_exmonsters] = 0;
}

op[num_MSRfusion] = instance_create(x, y + sep * tempcount++, oOptionLR);
op[num_MSRfusion].label = get_text("ExtrasMenu", "FusionMSRsuit");
op[num_MSRfusion].optionid = num_MSRfusion;
if (global.mod_fusion_unlocked == 0) {
    op[num_MSRfusion].enabled = 0;
    canedit[num_MSRfusion] = 0;
}

op[num_IGT] = instance_create(x, y + sep * tempcount++, oOptionLR);
op[num_IGT].label = get_text("ExtrasMenu", "IGT");
op[num_IGT].optionid = num_IGT;
if (global.mod_gamebeaten == 0) {
    op[num_IGT].enabled = 0;
    canedit[num_IGT] = 0;
}*/

op[lastitem] = instance_create(x, y + sep * (lastitem + 1), oPauseOption);
op[lastitem].optionid = lastitem;
op[lastitem].label = get_text("GlobalOptions", "Exit");
event_user(2);




/* */
/*  */
