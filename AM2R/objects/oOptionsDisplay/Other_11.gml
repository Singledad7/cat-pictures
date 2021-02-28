/// @description  Delete menu options
for (var i = 0; i <= menuSize; i++) {
    with (op[i]) instance_destroy();
}

// Delete headers
for (var i = 50; i <= 54; i++) {
    with (op[i]) instance_destroy();
}

