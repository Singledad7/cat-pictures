///nik_check_any_pad_button()

var _btns = array_create(10);
_btns[0] = gp_face1;
_btns[1] = gp_face2;
_btns[2] = gp_face3;
_btns[3] = gp_face4;
_btns[4] = gp_shoulderl;
_btns[5] = gp_shoulderr;
_btns[6] = gp_select;
_btns[7] = gp_start;
_btns[8] = gp_stickl;
_btns[9] = gp_stickr;

if (keyboard_check_pressed(vk_anykey)) {
    return true;
}

for (var s = 0; s < 32; s++) {
    for (var b = 0; b < array_length_1d(_btns); b++) {
        if (gamepad_button_check_pressed(s, _btns[b])) {
            return true;
        }
    }
}

return false;
