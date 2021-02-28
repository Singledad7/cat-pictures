i += 0.05;
if (i > 99999999) i = 0;
image_alpha = 0.1 + abs(sin(i));
if (visible && (oControl.kMenu1 && oControl.kMenu1PushedSteps == false || oControl.kMenu2 && oControl.kMenu2PushedSteps == false || oControl.kStart && oControl.kStartPushedSteps == false)) {
    instance_create(x, y, oPressStart2);
    with (oDrawTitleBG) alarm[0] = 60;
    sfx_play(sndStartButton);
    instance_destroy();
}

