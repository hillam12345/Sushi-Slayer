/// @param buff_name
/// @param value
/// @param is_permanent
var buff_name = argument0;
var value = argument1;
var is_permanent = argument2;

if (is_permanent) {
    // Ensure the permanent_buffs ds_map exists
    if (!ds_exists(global.permanent_buffs, ds_type_map)) {
        global.permanent_buffs = ds_map_create();
    }
    global.permanent_buffs[buff_name] = value;
} else {
    // Ensure the temporary_buffs ds_map exists
    if (!ds_exists(global.temporary_buffs, ds_type_map)) {
        global.temporary_buffs = ds_map_create();
    }
    global.temporary_buffs[buff_name] = value;
}
