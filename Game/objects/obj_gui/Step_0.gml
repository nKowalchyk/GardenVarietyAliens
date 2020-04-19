/// @description Insert description here
// You can write your code in this editor
/*
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
*/
if keyboard_check_pressed(ord("Q"))
{
	selected_index = 0
}

if keyboard_check_pressed(ord("W"))
{
	selected_index = 1
}

if keyboard_check_pressed(ord("E"))
{
	selected_index = 2
}

if keyboard_check_pressed(ord("R"))
{
	selected_index = 3
}

global.current_build_plant = gui_element_list[| selected_index].plant_type;