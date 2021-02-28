/// @description  Initialize.

// Modifiable variables. 
target_pop = y - 48; // The height that the Septogg pops out of the ground.

orbit_amplitude = 28; // The distance they will fly around their parent Septogg.

                            // Exit flight varibles. 
exit_speed_start = -2;      // The speed that the Septogg will fly back with fright when reacting to Sarah.
exit_speed = 1.5;           // The general speed that it will fly to exit the room.
exit_acceleration = 0.05;   // The acceleration to it use to reach the top speed.

exit_amplitude_x = random_range(0.625, 1.125);  // Provide erratic movement. 
exit_amplitude_y = random_range(0.625, 1.125);
exit_amplitude_lerp = 0.05;
exit_frequency_x = random_range(0.02, 0.045);
exit_frequency_y = random_range(0.02, 0.045);

turnspeed = 2; // The rate at with the Spetogg will turn at to avoid Sarah. 

// Internal variables.
xx = 0;
yy = 0;

depth = -80;
image_speed = 0;
image_index = 3;

frequency_x = 0;
amplitude_x = 0;
timer_x = irandom(100);

frequency_y = 0;
amplitude_y = 0;
timer_y = irandom(100);

parent = -1;
scavenge = -1;

flyoff = 0;
ytarget = 0;

state = 0;
statetime = 0;

eye_glow = false;

orbit = choose(-1, 1);

rock_piece_sprite = -1;

if(room == rm_a0h01 && global.timeofday == 2) orbit_amplitude*=1.25;

