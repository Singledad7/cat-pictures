init = 0;
flashing = 0;
boosting = 0;
spr_normal = sErisBody1;
spr_frozen = sErisBody1F;
spr_open = sErisBody1D;
shaking = 0;
tail = 0;
canbeX = 1;
//hp = 10;
hp = global.mod_serrisHbody;
//damage = 50;
damage = global.mod_serrisDamage;
// ice check
if ((global.item[11] == 0) && (!tail)) 
{
    state = 2;
} else {
    state = 0;
}
statetime = 0;
inrange = 0;

