global.mapoffsetx = 35;
global.mapoffsety = 39;
global.waterlevel = 0;
global.watertype = 0;
global.floormaterial = 4;
if (global.event[200] == 0) global.darkness = 3;
if (global.event[200] == 0) {
    mus_change(musCaveAmbienceA4);
} else mus_change(musArea4A);
scan_log(26, get_text("ScanEvents", "ScanEnvironment"), 120, 0);