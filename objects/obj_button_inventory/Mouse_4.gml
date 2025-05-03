event_inherited();  // Keep the press-down animation

global.inventory_ui_visible = !global.inventory_ui_visible;

if (instance_exists(obj_inventory_ui)) {
    obj_inventory_ui.visible = global.inventory_ui_visible;
}
