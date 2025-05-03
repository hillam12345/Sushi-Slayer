function sc_show_character_ui() {
    if (!instance_exists(obj_ui_character_page)) {
        instance_create_layer(0, 0, "UI", obj_ui_character_page);
    }
}
