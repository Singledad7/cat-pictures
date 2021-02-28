/// @description  Call from head to destroy routine

// Randomize drift
direction = image_angle + irandom_range(-20, 20);
speed = 4;
// Prepare to explode
alarm[1] = 200 + irandom(60);
// Destroy state
state = 100; 
statetime = 0;

