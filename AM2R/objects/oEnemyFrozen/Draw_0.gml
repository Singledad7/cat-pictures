spr0len = point_distance(x, y, x + spr0xoff, y + spr0yoff);
spr0dir = image_angle + point_direction(x, y, x + spr0xoff, y + spr0yoff);
spr1len = point_distance(x, y, x + spr1xoff, y + spr1yoff);
spr1dir = image_angle + point_direction(x, y, x + spr1xoff, y + spr1yoff);
spr2len = point_distance(x, y, x + spr2xoff, y + spr2yoff);
spr2dir = image_angle + point_direction(x, y, x + spr2xoff, y + spr2yoff);
spr3len = point_distance(x, y, x + spr3xoff, y + spr3yoff);
spr3dir = image_angle + point_direction(x, y, x + spr3xoff, y + spr3yoff);
draw_sprite_ext(sprite_index, -1, x + lengthdir_x(spr0len, spr0dir), y + lengthdir_y(spr0len, spr0dir), image_xscale, image_yscale, image_angle, -1, 1);
if (spr1 != -4) draw_sprite_ext(spr1, spr1i, x + lengthdir_x(spr1len, spr1dir), y + lengthdir_y(spr1len, spr1dir), spr1xs, spr1ys, image_angle + spr1a, -1, 1);
if (spr2 != -4) draw_sprite_ext(spr2, spr2i, x + lengthdir_x(spr2len, spr2dir), y + lengthdir_y(spr2len, spr2dir), spr2xs, spr2ys, image_angle + spr2a, -1, 1);
if (spr3 != -4) draw_sprite_ext(spr3, spr3i, x + lengthdir_x(spr3len, spr3dir), y + lengthdir_y(spr3len, spr3dir), spr3xs, spr3ys, image_angle + spr3a, -1, 1);

