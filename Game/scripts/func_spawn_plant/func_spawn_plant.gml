///func_spawn_plant(plant_type, tile)

plant_type = argument0;
tile = argument1;

show_debug_message(plant_type);

switch(plant_type) {
	case debug_plents.debug_plent:
		instance_create_depth(tile.x, tile.y, -1, obj_plent);
		break;
	case debug_plents.debug_plent_2:
		instance_create_depth(tile.x, tile.y, -1, obj_plent_2);
		break;
}