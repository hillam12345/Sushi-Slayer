// sc_toggle_ui

// Toggle inventory UI
if (global.ui_inventory_visible) {
    obj_inventory_ui.visible = false;  // Hide inventory UI
    global.ui_inventory_visible = false;  // Update the global flag
} else {
    obj_inventory_ui.visible = true;   // Show inventory UI
    global.ui_inventory_visible = true; // Update the global flag
}

// Toggle stats UI
if (global.ui_stats_visible) {
    obj_character_ui.visible = false;  // Hide stats UI
    global.ui_stats_visible = false;   // Update the global flag
} else {
    obj_character_ui.visible = true;   // Show stats UI
    global.ui_stats_visible = true;    // Update the global flag
}

// Toggle attack UI (Adjust this logic based on your setup)
if (global.ui_attack_visible) {
    obj_attack_ui.visible = false;     // Hide attack UI
    global.ui_attack_visible = false;  // Update the global flag
} else {
    obj_attack_ui.visible = true;      // Show attack UI
    global.ui_attack_visible = true;   // Update the global flag
}
