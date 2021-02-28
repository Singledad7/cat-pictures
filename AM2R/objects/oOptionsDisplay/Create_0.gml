y -= 8; // Moved from user 0 to avoid reset issues.
// Change to object creation position instead!

global.curropt = 0;
active = 0;
targetY = y;
timer = 0;
SPACER = 16;

__view_set( e__VW.Object, 0, id );

// Active in 5
alarm[0] = 5;

var i = 0;

/*
    This list dictates the order of selection in the Display Menu. 
    Also, the lists in User Defined 0 and 3 need to be in order.
*/

// DISPLAY OPTIONS

// Fullscreen and scale should NOT exist on Android
if (os_type != os_android) {
    opFullscreen = i++;
    opScale = i++;
}
opVSync = i++;
opSensitivity = i++;
opWidescreen = i++;
// HUD
opShowHUD = i++;
opShowMap = i++;
opCounterStyle = i++;
// NOTIFICATIONS
opShowHints = i++;
opButtonType = i++;
opShowScans = i++;
opLanguage = i++;

menuSize = i; // 1 larger than last item

vTargetY = 18 * menuSize + 72;

i = 0;

// Enable menu
repeat (menuSize + 1) {
    canEdit[i] = 1;
    i++;
}

// Get lang info
langCount = array_length_1d(global.language);
for (i = 0; i < langCount; i += 1) {
    ini_open_from_string(global.language[i]);
    lang[i] = ini_read_string("Header", "Language", "[!]");
    langAuthor[i] = ini_read_string("Header", "Author", "[!]");
    langAuthor2[i] = ini_read_string("Header", "Author2", "[!]");
    ini_close();
}

// Create menu items
event_user(0);

// Load tip text
event_user(3);

// Load current tip text
global.tiptext = tip[global.curropt];

/* */
/*  */
