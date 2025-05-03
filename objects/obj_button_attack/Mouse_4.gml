event_inherited();  // Keep the press-down animation

global.attack_ui_visible = !global.attack_ui_visible;

if (instance_exists(obj_attack_ui)) {
    obj_attack_ui.visible = global.attack_ui_visible;
}
