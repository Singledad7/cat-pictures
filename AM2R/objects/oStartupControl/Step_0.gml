/// @description netlog setup.

if (msg != -1) alarm[1]++;

if (!once && room == room_first && alarm[1] > 0 && nik_check_any_pad_button()) {
    msg = get_string_async("Enter netlog url:", "192.168.1.100");
}

