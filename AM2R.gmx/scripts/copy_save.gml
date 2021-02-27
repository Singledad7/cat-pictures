/// copy_save(from, to)
file1 = "save" + string(argument0 + 1);
file2 = "save" + string(argument1 + 1);
if (nik_file_exists(file2)) nik_file_delete(file2);
nik_file_copy(file1, file2);
with (oGameSelMenu) event_user(2);
saveslot_flash(argument1);
