spark = instance_create(x, y + 4 + random(24), oFXAnimSpark);
spark.sprite_index = sBatterySpark;
spark.image_speed = 0.5;
spark.additive = 1;
spark.image_xscale = choose(1, -1);
spark.image_yscale = choose(1, -1);
spark.image_angle = random(360);
spark.depth = -1;
alarm[1] = 10 + random(30);

