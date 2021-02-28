/// @description  check_joybtn(joystick_id)
/// @param joystick_id
if(os_type == os_windows) {
    var i;
    return 0;
}
else {
    var i;
    for(i = 0; i < gamepad_button_count(argument0); i++) {
        if(gamepad_button_check(argument0, i)) { 
            return i+1;
        }
    }
}
return 0;
