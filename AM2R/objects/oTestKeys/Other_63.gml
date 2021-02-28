/*
var i_d = async_load[?"id"];
if (i_d == msg) {
    if (async_load[?"status"]) {
        value = async_load[?"value"];
        if (value == 0) {
            global.targetx = 160;
            global.targety = 120;
            targetroom = asset_get_index("rm_a7b10");
            if (global.ingame) room_goto(targetroom);
        }
        if (value == 1) {
            global.targetx = 256;
            global.targety = 114;
            targetroom = rm_a6a01;
            if (global.ingame) room_goto(targetroom);
        }
        if (value == 2) {
            global.targetx = 1208;
            global.targety = 192;
            targetroom = rm_a7b10;
            if (global.ingame) room_goto(targetroom);
        }
        if (value == 3) {
            global.targetx = 112;
            global.targety = 192;
            targetroom = rm_a0h13;
            if (global.ingame) room_goto(targetroom);
        }
    } // if (async_load[?"status"])
} // if (i_d == msg)
if (i_d == msg_loadout) {
    if (async_load[?"status"]) {
        value = async_load[?"value"];
        get_loadout(value);
    }
}

/* */
/*  */
