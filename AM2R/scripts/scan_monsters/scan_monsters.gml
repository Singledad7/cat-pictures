/// @description  scan_monsters(amount, event_id)
/// @param amount
/// @param  event_id
if (!instance_exists(oScanMonster)) {
    scan = instance_create(0, 0, oScanMonster);
    scan.ammount = argument0;
    scan.eventno = argument1;
}
