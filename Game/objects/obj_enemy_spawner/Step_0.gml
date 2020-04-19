/// @description Insert description here
// You can write your code in this editor
if instance_number(obj_voidTile) == 0 and (instance_number(obj_game_over) == 0)
{
	//show_debug_message("Here")
	//game_restart()	
	
	instance_create_depth(2000, room_height/2, -4000, obj_game_over)
}