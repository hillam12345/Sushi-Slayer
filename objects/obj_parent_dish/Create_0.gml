// Add self to global dish list
ds_list_add(global.dish_list, id);

// Load dish data from JSON (already loaded globally)
var dish_data = global.dish_data[@ dish_name];

// Basic properties
hp = dish_data.max_hp;
max_hp = dish_data.max_hp;
damage_type = dish_data.damage_type;
min_bite_damage = dish_data.min_bite_damage;
max_bite_damage = dish_data.max_bite_damage;
special_effect = dish_data.special_effect;
sprite_index = asset_get_index(dish_data.sprite); // Set dish sprite

// Flags
is_alive = true;

// Define interact method (the bite)
interact = function () {
    if (!is_alive) {
        show_debug_message(dish_name + " is already eaten.");
        return;
    }

    // === Player Attacks ===
    var player_attack = global.base_attack + global.perm_boost + global.temp_boost;
    hp -= player_attack;
    show_debug_message("You took a bite of " + dish_name + "! Damage: " + string(player_attack) + ", Remaining HP: " + string(hp));

    // === Dish Counterattacks Immediately ===
    var bite_damage = irandom_range(min_bite_damage, max_bite_damage);

    // Apply resistance if any
    var resist = 0;
    if (ds_map_exists(global.temporary_buffs, "resistance_" + damage_type)) {
        resist = global.temporary_buffs[? ("resistance_" + damage_type)];
    }
    bite_damage = max(0, bite_damage - resist);

    global.player_hp -= bite_damage;
    show_debug_message(dish_name + " damages you for " + string(bite_damage) + "! Your HP: " + string(global.player_hp));

    // Optional: Apply special effect (like burn)
    if (special_effect != "") {
        // Example: handle burn_player effect here
        show_debug_message("Special effect triggered: " + special_effect);
        // Add logic for special_effect if needed
    }

    // === Check if dish is eaten ===
    if (hp <= 0) {
        is_alive = false;
        show_debug_message(dish_name + " has been fully eaten!");
        // Optional: handle loot drops here
        instance_destroy();
    }

    // Signal end of player action
    with (obj_controller) {
        player_action_done = true;
    }
};
