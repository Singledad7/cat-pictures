/// @description  Create shell.

shell = instance_create(x, y, oCoreXShell);
shell.lastBossX = lastBossX;
shell.lastBossY = lastBossY;
shell.sprite_index = lastBossSprite;
shell.image_index = lastBossFrame;
shell.lastBossAngle = lastBossAngle;
shell.lastBossFacing = lastBossFacing;
shell.lastYscale = lastYscale;
shell.depth = lastBossDepth;

