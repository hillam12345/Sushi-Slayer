// Create event of obj_player

// Player combat stats and keybinding
global.base_attack = 10;
global.perm_boost = 0;
global.temp_boost = 0;
global.player_max_hp = 100;
global.player_hp = global.player_max_hp;  // Set player HP to max

// Default keybinds (can be customized later)
key_attack = vk_space;  // Space bar to attack
key_use_item = ord("I");  // 'I' key to use item

// Buffs
global.permanent_buffs = ds_map_create();
global.temporary_buffs = ds_map_create();

// Inventory
inventory = ds_list_create();

// Initial UI setup
show_debug_message("Player Created");

// Reset any previous buffs (for new runs)
if (ds_exists(global.temporary_buffs, ds_type_map)) {
    ds_map_clear(global.temporary_buffs);
}

// obj_player - Create Event

// Initialize player health
global.player_max_hp = 100;  // Example max HP
global.player_hp = global.player_max_hp;  // Initialize player health at full
