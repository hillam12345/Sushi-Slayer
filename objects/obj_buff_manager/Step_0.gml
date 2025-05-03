// Step event of obj_buff_manager

// Apply temporary buffs at the start of battle (only once per battle)
if (obj_controller.turn_state == "player" && !battle_won) {
	if (ds_map_exists(global.temporary_buffs, "bite_boost")) {
    	global.temp_boost = global.temporary_buffs[? "bite_boost"];
	} else {
    	global.temp_boost = 0;
	}
}
