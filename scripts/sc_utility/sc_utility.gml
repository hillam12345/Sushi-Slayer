var _name = argument0;
var _value = argument1;
var _type = argument2;

if (_type == "permanent") {
    // Check if this permanent buff already exists, and apply the boost
    if (!ds_map_exists(global.permanent_buffs, _name)) {
        global.permanent_buffs[@ _name] = _value;  // If not, create the buff
    } else {
        global.permanent_buffs[@ _name] += _value;  // If it exists, boost it
    }
} else if (_type == "temporary") {
    // Check if this temporary buff already exists, and apply the boost
    if (!ds_map_exists(global.temporary_buffs, _name)) {
        global.temporary_buffs[@ _name] = _value;  // If not, create the buff
    } else {
        global.temporary_buffs[@ _name] += _value;  // If it exists, boost it
    }
}
