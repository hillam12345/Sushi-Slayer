// sc_apply_dish_effect_on_defeat

if (global.dish_list[global.current_dish].effect == "boost") {
    global.player_hp += 10;  // Example: Applying a health boost
    show_debug_message("Applied boost effect");
} else if (global.dish_list[global.current_dish].effect == "poison") {
    global.player_hp -= 5;   // Example: Applying poison damage
    show_debug_message("Applied poison effect");
} else {
    show_debug_message("No special effect for: " + global.dish_list[global.current_dish].effect);
}
