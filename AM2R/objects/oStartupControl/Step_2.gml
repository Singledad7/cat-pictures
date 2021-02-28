/// @description Check if we need to retry.

if (retry && state == LOADER_STATE.NOTHING && room != room_first) {
    writelog("Retrying...");
    savedata_flush();
}

global.gamepadIndex = pad;

