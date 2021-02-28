targetx = 640;
xpos = 288;
camtargetx = x + 160 - (oControl.widescreen_space/2);
alarm[0] = 120;
steps = 0;
__view_set( e__VW.Object, 0, oDrillSeq1 );
active = 1;
with (inst_123431) instance_destroy();
with (inst_123451) instance_destroy();
with (inst_123430) instance_destroy();
with (inst_123411) instance_destroy();
with (oDrillTrigger2) active = 0;
sfx_play(sndMorphBallSlot);
sfx_play(sndA2WJStartup);
advancing = 0;

