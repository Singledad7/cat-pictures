if (!sfx_isplaying(musFanfare)) {
    if (!sfx_isplaying(currentbgm)) {
        mus_current_fadein();
        alarm[0] = 10;
    }
} else alarm[0] = 5;


/*
//Original Code
if (!sfx_isplaying(musFanfare)) {
    mus_current_fadein();
} else alarm[0] = 5;

/* */
/*  */
