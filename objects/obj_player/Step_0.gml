// Check if it's the player's turn
if (obj_controller.turn_state == "player") {

    // Handle keypress for attack
    if (keyboard_check_pressed(key_attack)) {
        attack_selected_target();
    }

    // Handle keypress for using an item (example: healing potion)
    if (keyboard_check_pressed(key_use_item)) {
        use_item("healing_potion");  // Or prompt the player to choose which item
    }
}
// Check and apply burn effect
if (global.temp_burn_damage > 0 && global.burn_duration > 0) {
    global.player_hp -= global.temp_burn_damage;
    global.burn_duration -= 1;
    show_debug_message("You are burned! Damage: " + string(global.temp_burn_damage) + " HP: " + string(global.player_hp));
}

// Check and apply poison effect
if (global.temp_poison_damage > 0 && global.poison_duration > 0) {
    global.player_hp -= global.temp_poison_damage;
    global.poison_duration -= 1;
    show_debug_message("You are poisoned! Damage: " + string(global.temp_poison_damage) + " HP: " + string(global.player_hp));
}
