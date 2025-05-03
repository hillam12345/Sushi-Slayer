// sc_global_init

// Initialize or clear global variables

// Clear temporary buffs if they exist
if (ds_exists(global.temporary_buffs, ds_type_map)) {
    ds_map_clear(global.temporary_buffs);
}

// Clear permanent buffs if they exist
if (ds_exists(global.permanent_buffs, ds_type_map)) {
    ds_map_clear(global.permanent_buffs);
}

// Clear the dish list if it exists
if (ds_exists(global.dish_list, ds_type_list)) {
    ds_list_clear(global.dish_list);  // Clear active dishes
}

// Reset flags and states
global.has_key = false;  // Reset the key flag (if relevant)
global.current_room_name = "";  // Reset the room name



// Initialize player_max_hp if it's not already set
if (!variable_global_exists("player_max_hp")) {
    global.player_max_hp = 100;  // Set default value or load from save data
}
