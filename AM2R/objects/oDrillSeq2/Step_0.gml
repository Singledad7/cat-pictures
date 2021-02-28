if (active) {
    camtargetx = oCharacter.x + 100 - (oControl.widescreen_space/2);
} else camtargetx = oCharacter.x;
// this object temporarily replaces the camera
if (oControl.widescreen) { // check for widescreen because limit isn't always set as we like
    camtargetx = clamp(camtargetx, oCamera.limit, room_width-oCamera.limit);
}
if (x != camtargetx) x += (camtargetx - x) / 8;

