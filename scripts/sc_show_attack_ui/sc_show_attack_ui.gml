function sc_show_attack_ui() {
    if (!instance_exists(obj_ui_attack)) {
        instance_create_layer(0, 0, "UI", obj_ui_attack);
    }
}
