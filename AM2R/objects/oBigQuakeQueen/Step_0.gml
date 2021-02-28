if (global.ingame) {
    statetime += 1;
    if (statetime == 95) {
        sid = sfx_loop(sndQuakeLoop);
        audio_sound_gain(sid, 0.05, 0);
        audio_sound_gain(sid, global.opsoundvolume / 100, 1500);
        
    }
    if (statetime == 100) {
        global.quake = 1;
        intensity = 3;
    }
    if (statetime == 130) intensity = 5;
    if (statetime == 160) intensity = 7;
    if (statetime == 190) intensity = 9;
    if (statetime == 340) sfx_play(sndQueenIntro); //240
    if (statetime == 250) {
        intensity = 11;
        audio_sound_gain(sid, 0, 1500);
    }
    if (statetime == 500) intensity = 9;
    if (statetime == 540) intensity = 6;
    if (statetime == 580) intensity = 4;
    if (statetime == 595) intensity = 3;
    if (statetime == 615) intensity = 2;
    if (statetime == 630) intensity = 1;
    if (statetime == 645) { intensity = 0; event_user(0); }
    if (global.quake) {
        if (global.classicmode == 0) {
            __view_set( e__VW.XPort, 0, round(random(intensity)) );
            __view_set( e__VW.YPort, 0, round(random(intensity)) );
            oControl.xShake = round(random(intensity));
            oControl.yShake = round(random(intensity));
        }
        if (global.classicmode == 1) {
            __view_set( e__VW.XPort, 0, 80 + round(random(intensity)) );
            __view_set( e__VW.YPort, 0, 40 + round(random(intensity)) );
            oControl.xShake = 80 + round(random(intensity));
            oControl.yShake = 40 + round(random(intensity));
        }
    }
    if (global.opxjoyvib) {
        global.vibL = intensity * 0.15;
        global.vibR = intensity * 0.15;
    }
} else {
    __view_set( e__VW.XPort, 0, 0 );
    __view_set( e__VW.YPort, 0, 0 );
    oControl.xShake = 0;
    oControl.yShake = 0;
} // if (global.ingame) else

