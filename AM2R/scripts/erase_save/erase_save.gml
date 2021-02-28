/// @description  erase_save()
filename = "save" + string(global.saveslot + 1);
nik_file_delete(filename);
with (oMenuSaveSlot) if (slot == global.saveslot) {
    saveexists = 0;
    smode = 0;
}
saveslot_flash(global.saveslot);
savedata_flush();
