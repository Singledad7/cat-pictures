/// @description  Check for gamepad input on Android.
if(init) exit;

if(((os_type == os_android) || (os_type == os_linux)) && global.joydetected == 0) {
    for (var i = 0; i < gamepad_get_device_count(); i++;) {
        if (gamepad_is_connected(i)) {
            for(var ia = 0; ia < gamepad_button_count(i); ia++) {
                if(gamepad_button_check(i, ia)) { 
                    global.opjoyid = i;
                    global.joydetected = 1;
                }
            }
            for(var ia = 0; ia < gamepad_axis_count(i); ia++) {
                if(gamepad_axis_value(i, ia) != 0) {
                    global.opjoyid = i;
                    global.joydetected = 1;
                }
            }
        }
    }
}

/// Input3D Code
/*
for (var i = 0; i < listSize; i++) {
    inputHeld[i] = min(1, keyboard_check(inputArray[i, 0]) + input_gamepad_check(gamepadIndex, inputArray[i, 1])); // 
    inputReleased[i] = 0;
    if (inputHeld[i] != 0) {
        input[i] += 1;
    } else {
        if (input[i] != 0) {
            inputReleased[i] = 1;
        }
        input[i] = 0;
    }
    
    if (input[i] == 1) {
        inputPressed[i] = 1;
    } else {
        inputPressed[i] = 0;
    }
}

/* */
/// Widescreen space

if (widescreen) {
    widescreen_space = 106;
    if (320/240 == surface_get_width(widescreen_surface)/surface_get_height(widescreen_surface)) {
        writelog("Fixing aspect ratio...");
        surface_free(widescreen_surface);
    }
} else {
    widescreen_space = 0;
    //view_enabled[1] = false;
    __view_set( e__VW.Visible, 1, false );
}

//wAlpha = max(0, wAlpha - (1/30));

/* */
/*  */
