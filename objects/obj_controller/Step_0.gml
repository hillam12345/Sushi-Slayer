switch (turn_state) {
    case "player":
        // Wait for player action
        if (player_action_done) {
            show_debug_message("Player finished their action. Now it's the dish's turn.");
            turn_state = "dish";
            player_action_done = false;
        }
        break;

    case "dish":
        if (ds_list_size(global.dish_list) > 0) {
            // Each dish applies its effect
            for (var i = 0; i < ds_list_size(global.dish_list); i++) {
                var dish_inst = global.dish_list[| i];
                if (instance_exists(dish_inst) && dish_inst.is_alive) {
                    with (dish_inst) {
                        apply_dish_effect();
                    }
                }
            }
        }

        show_debug_message("Dishes have taken their turn. Back to player.");
        turn_state = "player";
        break;
}

// Player click interaction (bites)
if (turn_state == "player" && mouse_check_button_pressed(mb_left)) {
    var _mx = device_mouse_x(0);
    var _my = device_mouse_y(0);

    // Check if clicked on a dish
    var clicked_dish = instance_position(_mx, _my, obj_parent_dish);
    if (clicked_dish != noone) {
        global.selected_target = clicked_dish;
        with (clicked_dish) {
            if (function_exists(interact)) {
                interact();
            }
        }
    } else {
        // Check for other interactive objects
        var clicked_obj = instance_position(_mx, _my, obj_interactive);
        if (clicked_obj != noone) {
            with (clicked_obj) {
                if (function_exists(interact)) {
                    interact();
                } else {
                    show_debug_message("Clicked object has no interact() function.");
                }
            }
        }
    }
}

// Check if battle is won
if (!battle_won && ds_list_size(global.dish_list) == 0) {
    show_debug_message("Meal completed! All dishes defeated.");
    battle_won = true;

    // Reward: Add permanent buff
    add_buff("bite_power", 2, "permanent");
    global.perm_boost += 2;

    show_debug_message("You feel stronger! Permanent bite power increased by 2.");

    // Optional: Clear temp buffs
    ds_map_clear(global.temporary_buffs);
}