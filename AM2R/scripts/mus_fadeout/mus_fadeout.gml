/// @description  mus_fadeout(sound)
/// @param sound
if (audio_is_playing(argument0)) audio_sound_gain(argument0, 0, 3000);
