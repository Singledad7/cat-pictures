/// @description  Realign body
for (var i = bodylength; i >= 0; i --) {
    segment[i].x = x + (abs(i-13)*26*-facing);
    segment[i].y = y;
}

