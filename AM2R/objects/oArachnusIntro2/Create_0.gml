y = 208;
image_speed = 0.2;
smk = instance_create(x - 8, y, oFXAnimSpark);
smk.image_speed = 0.5;
smk.additive = 0;
smk.sprite_index = sSmoke1;
smk.image_alpha = 0.6;
smk = instance_create(x + 8, y, oFXAnimSpark);
smk.image_speed = 0.5;
smk.additive = 0;
smk.sprite_index = sSmoke1;
smk.image_alpha = 0.6;

