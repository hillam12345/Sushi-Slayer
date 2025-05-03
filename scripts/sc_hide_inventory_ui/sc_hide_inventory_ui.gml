// This script hides the inventory UI, checking if we are in the correct room.
if (room == rm_game) {
    with (obj_inventory_ui) {
        visible = false; // Hide UI object
    }
    global.inventory_ui_visible = false;
}
