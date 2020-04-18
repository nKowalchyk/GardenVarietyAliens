/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) && 
	func_mouse_collision(self)) {
	
	if (is_empty and obj_gui.selected_index == 0){
		is_empty = false;
		func_spawn_plant(global.current_build_plant, self);
	}
	else if tower != noone and obj_gui.selected_index != 0
	{
		//show_debug_message("HERE")
		func_upgrade_plant(global.current_build_plant, tower)
	}
}

if (tower != noone && row_can_fire) {
	tower.enemy_in_range = true;
}
else if (tower != noone){
	tower.enemy_in_range = false;	
}


if (tower == noone) {
	is_empty = true;
}