alarm[1] = 6 + random(4);
fx = instance_create(x, y, oFXTrail);
fx.sprite_index = sEMP_Spark;
fx.image_index = choose(0, 1, 2, 3);
fx.image_speed = 0;
fx.image_xscale = image_xscale;
fx.image_yscale = image_yscale;
fx.image_alpha = spark_alpha;
fx.additive = 1;
fx.fadespeed = 0.05;
fx.image_angle = image_angle + 90 + random(90);
fx.depth = depth;

