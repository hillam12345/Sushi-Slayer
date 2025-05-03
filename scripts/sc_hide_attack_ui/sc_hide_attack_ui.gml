function sc_hide_attack_ui() {
    if (instance_exists(obj_ui_attack)) {
        with (obj_ui_attack) {
            instance_destroy();
        }
    }
}
