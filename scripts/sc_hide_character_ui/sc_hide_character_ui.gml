function sc_hide_character_ui() {
    if (instance_exists(obj_ui_character_page)) {
        with (obj_ui_character_page) {
            instance_destroy();
        }
    }
}
