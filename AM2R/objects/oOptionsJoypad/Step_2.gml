/// @description  Input workaround for Linux

for (var g = 0; g <= gamepad_axis_count(global.opjoyid); g ++) {
    linaxlast[g] = gamepad_axis_value(global.opjoyid, g);
}

