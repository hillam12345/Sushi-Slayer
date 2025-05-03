// This script shows the inventory UI, checking if we are in the correct room.
if (room == rm_game) {
    with (obj_inventory_ui) {
        visible = true; // Show UI object
    }
    global.inventory_ui_visible = true;
}
