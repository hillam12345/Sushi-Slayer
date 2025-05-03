// sc_start_battle

// Reset player health to max before battle (adjusted based on your choice)
global.player_hp = global.player_max_hp;  // Optionally keep current HP or reset

// Clear temporary buffs before the battle
if (ds_exists(global.temporary_buffs, ds_type_map)) {
    ds_map_clear(global.temporary_buffs);
}

// Example of applying other initial battle effects (optional)
global.battle_started = true;  // Example flag to track battle state
