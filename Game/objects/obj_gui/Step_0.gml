/// @description Insert description here
// You can write your code in this editor

if(mouse_wheel_down() && selected_index < ds_list_size(gui_element_list) - 1) {
	selected_index += 1;
}
else if(mouse_wheel_down() && selected_index >= ds_list_size(gui_element_list) - 1) {
	selected_index = 0;
}
else if(mouse_wheel_up() && selected_index > 0) {
	selected_index -= 1;	
}
else if(mouse_wheel_up() && selected_index <= 0) {
	selected_index = ds_list_size(gui_element_list) - 1;
}

global.current_build_plant = gui_element_list[| selected_index].plant_type;