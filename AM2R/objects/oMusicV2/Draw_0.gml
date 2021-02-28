var yoff, sep;
yoff = 48;
sep = 8;
draw_set_alpha(1);
draw_set_font(fontMenuSmall);
draw_set_color(c_white);
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff, " Current Song: " + string(currentbgm) + " - Playing: " + string(audio_is_playing(currentbgm)) + " - A0: " + string(alarm[0]));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 1, " Boss: " + string(bossbgm));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 2, " Title: " + string(254) + " - Playing: " + string(audio_is_playing(musTitle)));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 3, " Fanfare: " + string(256) + " - Playing: " + string(audio_is_playing(musFanfare)));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 4, " Cave: " + string(257) + " - Playing: " + string(audio_is_playing(musMainCave)) + " - Vol: " + string(audio_sound_get_gain(musMainCave)));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 5, " MetAppear: " + string(258) + " - Playing: " + string(audio_is_playing(musMonsterAppear)));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 6, " Alpha: " + string(259) + " - Playing: " + string(audio_is_playing(musAlphaFight)));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 7, " Amb: " + string(260) + " - Playing: " + string(audio_is_playing(musCaveAmbience)));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 8, " Area1A: " + string(261) + " - Playing: " + string(audio_is_playing(musArea1A)));
draw_text_shadow(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + yoff + sep * 9, " Area1B: " + string(262) + " - Playing: " + string(audio_is_playing(musArea1B)));

