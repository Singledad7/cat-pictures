/// @description  Draw the Septogg.

yy = sin(timer*frequency)*amplitude;

if(lift>0) draw_sprite_ext(sElderSeptoggBackWings, image_index, xstart, y + yy + 4, 1, 1, 0, c_gray, 1);

draw_sprite(sprite_index, image_index, xstart, y + yy);

// Debug
/*
draw_set_alpha(1);

draw_text(xstart, y + yy, string(x) + ", " + string(y));

/* */
/*  */
