/// @description Animations
if(xShake == 1)
{
    x = x + 2;
    PlaySoundMono(sndCrystalShake);
    xShake = 2;
}
else if(xShake == 2)
{
    xShake = 3;
}
else if(xShake == 3)
{
    x = x - 2;
    xShake = 0;
}

if(xShake == 4)
{
    x = x - 2;
    PlaySoundMono(sndCrystalShake2);
    xShake = 5;
}
else if(xShake == 5)
{
    xShake = 6;
}
else if(xShake == 6)
{
    x = x + 2;
    xShake = 0;
}

