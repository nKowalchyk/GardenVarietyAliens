/// @description Insert description here
// You can write your code in this editor

gui_element_list = ds_list_create();
selected_index = 0;

x = global.tile_size / 4;
y = global.tile_size / 4;

ds_list_add(gui_element_list, instance_create_depth(x, y, depth, obj_gui_debug_plent));
ds_list_add(gui_element_list, instance_create_depth(x + global.tile_size, y, depth, obj_gui_debug_plent_2));