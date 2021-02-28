var xoffw = 0;

for (i = 0; i < bgno; i += 1) {
    if (bgid[i] != bgScreenGuide) {
        if (oControl.widescreen) {
            if (tile[i] == 1) {
                draw_background_tiled_ext(bgid[i], floor(__view_get( e__VW.XView, 1 ) * xratio[i] + xoff[i] + xoffw), floor(__view_get( e__VW.YView, 1 ) * yratio[i] + yoff[i]), xscale[i], yscale[i], -1, alpha[i]);
            } else {
                draw_background_ext(bgid[i], floor(__view_get( e__VW.XView, 1 ) * xratio[i] + xoff[i]), floor(__view_get( e__VW.YView, 1 ) * yratio[i] + yoff[i]), xscale[i], yscale[i], 0, -1, alpha[i]);
            }
        } else {
            if (tile[i] == 1) {
                if (bgid[i] == bgA5Outside) { // edge case to accomodate the new BG size
                    xoffw = -64;
                } else xoffw = 0;
                draw_background_tiled_ext(bgid[i], floor(__view_get( e__VW.XView, 0 ) * xratio[i] + xoff[i] + xoffw), floor(__view_get( e__VW.YView, 0 ) * yratio[i] + yoff[i]), xscale[i], yscale[i], -1, alpha[i]);
            } else {
                if (bgid[i] == bgA7Cave) { // edge case to accomodate the new BG size
                    xoffw = -48;
                } else xoffw = 0;
                draw_background_ext(bgid[i], floor(__view_get( e__VW.XView, 0 ) * xratio[i] + xoff[i] + xoffw), floor(__view_get( e__VW.YView, 0 ) * yratio[i] + yoff[i]), xscale[i], yscale[i], 0, -1, alpha[i]);
            }
        }
    }
}

