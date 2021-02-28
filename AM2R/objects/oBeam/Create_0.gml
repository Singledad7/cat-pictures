if (y > global.waterlevel && global.waterlevel != 0) {
    inwater = 1;
} else {
    inwater = 0;
}
time = 0;
dohit = 1;
smissile = 0; // Do not delete this. This was needed for beam attacks on Monsters. 
// I am mimicking missiles here. The game will crash without this variable!!!

