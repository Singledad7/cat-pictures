image_alpha = 0;
startx = x;
starty = y;
x += 64 + random(16);
y += random_range(-28, 58);
direction = point_direction(x, y, startx, starty);
speed = 2;
fadeout = 0;
fadein = 1;

