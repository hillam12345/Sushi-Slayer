if (attack_mode) {
    // Draw the attack UI background (customize as needed)
    draw_self();
    
    // Example: Display attack options (could be based on dishes or targets)
    draw_text(x + 10, y + 10, "Attack Options:");
    draw_text(x + 10, y + 30, "Dish 1: " + string(global.dish_1));
    draw_text(x + 10, y + 50, "Dish 2: " + string(global.dish_2));
    // Add more attack options as needed
}
