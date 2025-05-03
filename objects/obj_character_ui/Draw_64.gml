if (stats_open) {
    // Draw the stats background (customize as needed)
    draw_self();
    
    // Example: Display player stats (assuming you have variables like player health)
    draw_text(x + 10, y + 10, "Character Stats:");
    draw_text(x + 10, y + 30, "Health: " + string(global.player_health));
    draw_text(x + 10, y + 50, "Attack: " + string(global.player_attack));
    // Add more stats as needed
}
