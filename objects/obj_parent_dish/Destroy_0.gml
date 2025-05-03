// Cleanup: Remove self from global.dish_list
if (ds_exists(global.dish_list, ds_type_list)) {
    var index = ds_list_find_index(global.dish_list, id);
    if (index != -1) {
        ds_list_delete(global.dish_list, index);
    }
}
// Handle item drops after defeating a dish
if (dish_data != undefined && dish_data.item_drops != undefined) {
    for (var i = 0; i < array_length_1d(dish_data.item_drops); i++) {
        var item = dish_data.item_drops[i];
        // Example: if it's a buff item, apply it
        if (item.item_type == "buff") {
            var buff_name = item.item_name;
            var buff_effect = item.effect;
            // Example of applying a resistance buff
            if (buff_effect.type == "resistance") {
                global.temporary_buffs[@ buff_name] = buff_effect.amount;
            }
        }
        // Example: if it's a healing item, apply healing
        if (item.item_type == "item" && item.effect.type == "heal") {
            global.player_hp += item.effect.amount;
            show_debug_message("You gained " + string(item.effect.amount) + " HP from " + item.item_name);
        }
    }
}
