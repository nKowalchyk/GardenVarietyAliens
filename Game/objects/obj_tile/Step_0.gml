/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && 
	func_mouse_collision(self) &&
	is_empty) {
	instance_create_depth(x, y, -1, obj_plent);
	is_empty = false;
}