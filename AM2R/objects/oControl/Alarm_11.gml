/// @description  Room map generation
/*
file_text_write_string(txt, string(room_get_name(room)));
file_text_writeln(txt);
file_text_write_string(txt, string(room_width));
file_text_writeln(txt);
file_text_writeln(txt);

file_text_close(txt);*/
/*
ds_map_add(room_width_map, room, room_width);

if (room != room_last)room_goto_next();
else {
    txt = file_text_open_write("rooms.txt");
    file_text_write_string(txt, ds_map_write(room_width_map));
    file_text_close(txt);
}

alarm[11] = 1;

/* */
/*  */
