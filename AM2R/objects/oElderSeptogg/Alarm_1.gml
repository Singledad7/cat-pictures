/// @description  Set Septogg sprite based on area.

switch (real(string_char_at(room_get_name(room), 5)))
{
    case 1: 
        flying_sprite   = sElderSeptogg_tlRock1AN; 
        carrying_sprite = sElderSeptogg_tlRock1AN_Carry;
        material = 1;
        break;
    case 2: 
        flying_sprite   = sElderSeptogg_tlRock2NB; 
        carrying_sprite = sElderSeptogg_tlRock2NB_Carry;
        material = 1;
        break;
    case 3:    
        var room_let = string(string_char_at(room_get_name(room), 6))
        if(room_let == "b") {
            flying_sprite   = sElderSeptogg_tlArea3Breed; 
            carrying_sprite = sElderSeptogg_tlArea3Breed_Carry; 
            material = 5;
        }
        else {
            flying_sprite   = sElderSeptogg_tlRock3A; 
            carrying_sprite = sElderSeptogg_tlRock3A_Carry;
            material = 1;
        }
        break;
    case 4: 
        var room_let = string(string_char_at(room_get_name(room), 6))
        if(room_let == "b") {
            flying_sprite   = sElderSeptogg_tlRock4B; 
            carrying_sprite = sElderSeptogg_tlRock4B_Carry; 
            material = 1;
        }
        else {
            flying_sprite   = sElderSeptogg_tlRock4A; 
            carrying_sprite = sElderSeptogg_tlRock4A_Carry; 
            material = 1;
        }
        break;
    case 5: 
        flying_sprite   = sElderSeptogg_tlRock5A; 
        carrying_sprite = sElderSeptogg_tlRock5A_Carry; 
        material = 1;
        break;
    case 6: 
        flying_sprite   = sElderSeptogg_tlRock6A; 
        carrying_sprite = sElderSeptogg_tlRock6A_Carry; 
        material = 1;
        break;
    default: 
        var room_num = real(string(string_char_at(room_get_name(room), 7) + string_char_at(room_get_name(room), 8)))
        if(room_num >= 16 and room_num <= 23) {
            flying_sprite   = sElderSeptogg_tlGreenCrystals; 
            carrying_sprite = sElderSeptogg_tlGreenCrystals_Carry;
            material = 1;
        }
        else if((room_num >= 24 and room_num <= 28) or room_num == 11) {
            flying_sprite   = sElderSeptogg_tlRock3A; 
            carrying_sprite = sElderSeptogg_tlRock3A_Carry;
            material = 1;
        }
        else if(room_num >= 5 and room_num <= 15) {
            flying_sprite   = sElderSeptogg_tlRock1AN; 
            carrying_sprite = sElderSeptogg_tlRock1AN_Carry;
            material = 1;
        }
        else if(room_num >= 29) {
            flying_sprite   = sElderSeptogg_tlRock4A; 
            carrying_sprite = sElderSeptogg_tlRock4A_Carry;
            material = 1;
        }
        else {
            switch (global.timeofday) {
                case 1: 
                    flying_sprite   = sElderSeptoggTwilight; 
                    carrying_sprite = sElderSeptoggTwilight_Carry;
                    break;
                case 2: 
                    flying_sprite   = sElderSeptoggNight; 
                    carrying_sprite = sElderSeptoggNight_Carry; 
                    break;
                default: 
                    flying_sprite   = sElderSeptogg; 
                    carrying_sprite = sElderSeptogg_Carry; 
                }
                material = 2;
        }
}

sprite_index = flying_sprite;

/// Create baby Septoggs if parent.

if(/*(room == rm_a0h01 && global.timeofday != 2) ||*/ room == rm_a0h05) exit;

repeat(parent) {
    var inst = instance_create(x, y, oBabySeptogg);
    
    with (inst) {
        parent = other.id;
        event_user(0);
    }
}

/* */
/*  */
