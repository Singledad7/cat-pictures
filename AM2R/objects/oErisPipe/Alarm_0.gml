if (state == 1) {
    var sp = instance_create(x + ((1 - facing)*3.5), y + irandom(16), oSparkParticle);
    sp.mycolor = c_aqua;
}
alarm[0] = 30 + irandom(60 - (50*active)) - (29*active);

