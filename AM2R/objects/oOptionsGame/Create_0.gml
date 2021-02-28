global.curropt = 0;
var tempnumcounter = 0;
//This list dictates the order of selection in the Extras Menu. 
//Also the list in User Defined 0 needs to be in order.

num_seed = tempnumcounter++;
num_useSeed = tempnumcounter++;
num_elm = tempnumcounter++;
num_insanity = tempnumcounter++;

lastitem = tempnumcounter; //This value will be one number higher than the last number in the list above.

seed = string(oControl.mod_seed);
while (string_length(seed) < 10) seed = "0" + seed;

editing = 0;
digit = 0;

var i = 0;
repeat (10) {
    digit[i] = string_char_at(seed, i + 1);
    i++
}


vTargetY = 18 * lastitem + 30; //300;

active = 0;
alarm[0] = 5;
i = 0;
repeat (lastitem + 1) {
    canedit[i] = 1;
    i += 1;
}
targety = y;
__view_set( e__VW.Object, 0, id );
timer = 0;
event_user(0);
//with (oSS_Control) active = 1;
/*with (oSS_Fg) {
    active = 1;
}*/



/*tip[num_baby] = get_text("ExtrasMenu", "EarlyBaby_Tip");
tip[num_MSRfusion] = get_text("ExtrasMenu", "FusionMSRsuit_Tip");
tip[num_exmonsters] = get_text("ExtrasMenu", "ExtremeMonsters_Tip");
tip[num_bwfilter] = get_text("ExtrasMenu", "GBFilter_Tip");*/

tip[num_seed] = get_text("GameplayMenu", "CustomSeed_Tip");
tip[num_useSeed] = get_text("GameplayMenu", "UseSeed_Tip");
tip[num_elm] = get_text("ExtrasMenu", "ExtremeMonsters_Tip");
tip[num_insanity] = get_text("GameplayMenu", "InsanityMode_Tip");


tip[lastitem] = get_text("GlobalOptions", "ExitMain_Tip");
global.tiptext = tip[global.curropt];
alarm[1] = 1;
/*
modeindex = 0;
if (global.gamemode == 3) modeindex = get_text("Title-Additions", "GameSlot_NewGame_ClassicMode");
if (global.gamemode == 4) modeindex = get_text("Title-Additions", "GameSlot_NewGame_AM2Random");
if (global.gamemode == 5) modeindex = get_text("Title-Additions", "GameSlot_NewGame_SplitRandom");

/* */
/*  */
