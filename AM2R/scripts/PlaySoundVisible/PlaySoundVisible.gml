/// @description  PlaySoundVisible(sound, x, y)
/// @param sound
/// @param  x
/// @param  y
if (argument1 > __view_get( e__VW.XView, 0 ) && argument1 < __view_get( e__VW.XView, 0 ) + 320
 && argument2 > __view_get( e__VW.YView, 0 ) && argument2 < __view_get( e__VW.YView, 0 ) + 240) {
    PlaySoundMono(argument0);
}
