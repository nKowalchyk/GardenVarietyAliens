///func_spawn_plant(plant_type, tile)

plant_type = argument0;
tile = argument1;

switch(plant_type) {
	case debug_plents.debug_plent:
		var inst = instance_create_depth(tile.x, tile.y, -1, obj_plent);
		tile.tower = inst;
		inst.tile = tile;
		break;
	case debug_plents.debug_plent_2:
		var inst = instance_create_depth(tile.x, tile.y, -1, obj_plent_2);
		tile.tower = inst;
		inst.tile = tile;
		break;
}