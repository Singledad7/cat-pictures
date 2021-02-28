mus_stop(musTitle);
mus_stop(musCredits);
mus_play_once(musEnding);

if (oControl.widescreen) {
    view_enabled = true;
    __view_set( e__VW.Visible, 0, true );   
}