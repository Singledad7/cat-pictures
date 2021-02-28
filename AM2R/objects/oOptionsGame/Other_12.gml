/*if (oControl.palette_number == 0) op[num_bwfilter].optext = get_text("ExtrasMenu", "GBoff");
if (oControl.palette_number == 1) op[num_bwfilter].optext = get_text("ExtrasMenu", "GBolive");
if (oControl.palette_number == 2) op[num_bwfilter].optext = get_text("ExtrasMenu", "GBblue");
if (oControl.palette_number == 3) op[num_bwfilter].optext = get_text("ExtrasMenu", "GBblack");
if (oControl.palette_number == 4) op[num_bwfilter].optext = get_text("ExtrasMenu", "GBred");
if (oControl.palette_number == 5) op[num_bwfilter].optext = get_text("ExtrasMenu", "GBgreen");
if (oControl.palette_number == 6) op[num_bwfilter].optext = get_text("ExtrasMenu", "GBcustom");
*/

// oControl.mod_usemanualseed
// oControl.seed
// oControl.mod_seed


if (oControl.mod_usemanualseed == 1) {
    op[num_useSeed].optext = get_text("GlobalOptions", "Yes");
} else op[num_useSeed].optext = get_text("GlobalOptions", "No");

op[num_seed].optext = seed;

if (oControl.mod_insanitymode == 1) {
    op[num_insanity].optext = get_text("GlobalOptions", "Enabled");
} else op[num_insanity].optext = get_text("GlobalOptions", "Disabled");

if (oControl.mod_monstersextremecheck == 1) {
    op[num_elm].optext = get_text("GlobalOptions", "Enabled");
} else op[num_elm].optext = get_text("GlobalOptions", "Disabled");

/*
if (oControl.mod_monstersextremecheck == 1) {
    op[num_exmonsters].optext = get_text("GlobalOptions", "Enabled");
} else op[num_exmonsters].optext = get_text("GlobalOptions", "Disabled");
if (global.mod_gamebeaten == 0) {
    op[num_exmonsters].optext = get_text("ExtrasMenu", "Locked");
}

if (oControl.msr_fusionsuit == 1) {
    op[num_MSRfusion].optext = get_text("ExtrasMenu", "MSR");
} else op[num_MSRfusion].optext = get_text("ExtrasMenu", "Default");
if (global.mod_fusion_unlocked == 0) {
    op[num_MSRfusion].optext = get_text("ExtrasMenu", "Locked");
}

if (oControl.mod_IGT == 1) {
    op[num_IGT].optext = get_text("GlobalOptions", "Enabled");
} else op[num_IGT].optext = get_text("GlobalOptions", "Disabled");
if (global.mod_gamebeaten == 0) {
    op[num_IGT].optext = get_text("ExtrasMenu", "Locked");
}

/* */
/*  */
