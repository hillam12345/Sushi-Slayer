event_inherited();  // Keep the press-down animation

global.character_ui_visible = !global.character_ui_visible;

if (instance_exists(obj_character_ui)) {
    obj_character_ui.visible = global.character_ui_visible;
}
