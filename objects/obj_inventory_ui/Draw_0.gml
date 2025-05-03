if (inventory_open) {
    // Draw the inventory background (can be customized to your needs)
    draw_self();
    
    // Example: display inventory items (if using a list or array)
    draw_text(x + 10, y + 10, "Inventory List:");
    for (var i = 0; i < ds_list_size(global.inventory); i++) {
        var item = global.inventory[| i];
        draw_text(x + 10, y + 30 + (i * 20), item);  // Display each item in the inventory
    }
}
