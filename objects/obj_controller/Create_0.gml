// === Initialize global variables ===

// Buff containers
if (!ds_exists(global.permanent_buffs, ds_type_map)) {
    global.permanent_buffs = ds_map_create();
}

if (!ds_exists(global.temporary_buffs, ds_type_map)) {
    global.temporary_buffs = ds_map_create();
}

// Player stats
global.player_hp = 100;
global.player_max_hp = 100;

// Dish system
if (!ds_exists(global.dish_list, ds_type_list)) {
    global.dish_list = ds_list_create();
}

// Other flags
global.has_key = false;
global.current_room_name = "";

// === OPTIONAL: Debug output to confirm ===
show_debug_message("Global variables initialized in obj_controller.");
