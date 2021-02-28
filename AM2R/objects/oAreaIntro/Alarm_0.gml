/// @description  ALARM[0]

var index = real(string_char_at(sprite_get_name(sprite_index), 9));
//show_debug_message(string(index));

for (var i = 0; i < (image_number + 1); i++) { // Safety first, kiddos
    pause[i] = 0;
}

// Grab values from oControl...
pause[oControl.mod_header[index, 1]] = quarter_delay;
pause[oControl.mod_header[index, 2]] = quarter_delay;
pause[oControl.mod_header[index, 3]] = quarter_delay;
pause[oControl.mod_header[index, 4]] = final_delay;

if (sprite_index = sIntro_A7) { // Special handling for INTERLOPER
    pause[oControl.mod_header[index, 2]] = quarter_delay*2;
    pause[oControl.mod_header[index, 3]] = quarter_delay*2;
    pause[oControl.mod_header[index, 4]] = quarter_delay*2;
}
    


//pause[0] = quarter_delay;
//pause[3] = quarter_delay;

/*switch (sprite_index) {
    case sIntro_A1:
    case sIntro_A2: {
        pause[19] = quarter_delay;
        pause[21] = final_delay;
        break;
    }
    case sIntro_A4:
    case sIntro_A8: {
        pause[15] = quarter_delay;
        pause[17] = final_delay;
        break;
    }
    case sIntro_A3: {
        pause[24] = quarter_delay;
        pause[26] = final_delay;
        break;
    }
    case sIntro_A5: {
        pause[26] = quarter_delay;
        pause[28] = final_delay;
        break;
    }
    case sIntro_A7: {
        pause[7] = quarter_delay*2;
        pause[9] = quarter_delay*2;
        pause[17] = quarter_delay*2;
    }
}*/

visible = 1;
image_speed = 0.25;

/* */
/*  */
