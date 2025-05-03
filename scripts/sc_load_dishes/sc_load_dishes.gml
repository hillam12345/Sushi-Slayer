// sc_load_dishes

var _file = file_text_open_read("dishes.json");

while (!file_text_eof(_file)) {
    var _line = file_text_read_string(_file);
    var _dish_data = json_decode(_line);  // Assuming JSON format per dish

    // Process the dish data and add it to the global dish list
    ds_list_add(global.dish_list, _dish_data);
}

file_text_close(_file);
