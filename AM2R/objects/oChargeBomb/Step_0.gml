x = oCharacter.x;  //- 1;
y = oCharacter.y - 9; // - 10;
pwr += 0.03;
if (oControl.kFire == 0 || oCharacter.unmorphing == 1 || oCharacter.state == 32 || pwr >= 1) event_user(0);

