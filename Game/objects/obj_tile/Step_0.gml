/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && 
	func_mouse_collision(self) &&
	is_empty) {
	func_spawn_plant(global.current_build_plant, self);
	is_empty = false;
}