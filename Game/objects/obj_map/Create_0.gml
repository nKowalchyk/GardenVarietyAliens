/// @description Insert description here

// vars
width = global.grid_width;
height = global.grid_height;

grid = ds_list_create();
rows_can_fire = ds_list_create();

// Creating and populating the grid

voidGrid = ds_list_create();

for(i = 0; i < height; i++) {
	
	global.lane[i] = true;
	
	//show_debug_message(i)
	
	var row = ds_list_create();
	var voidRow = ds_list_create();
	
	var tile_y = y + global.tile_size * i;
	for(j = 0; j < width+3; j++) {
		var tile_x = x + global.tile_size * j;
		
		if j < width
		{
			var tile = instance_create_depth(tile_x, tile_y, 1, obj_tile);
			ds_list_add(row, tile);
		}
		else
		{
			var voidTile = instance_create_depth(tile_x, tile_y, 1, obj_spawn_tile)
			ds_list_add(voidRow, voidTile);
		}
	}
	ds_list_add(grid, row);
	ds_list_add(rows_can_fire, false);
	
	ds_list_add(voidGrid, voidRow);
	
	var void = instance_create_depth(x - global.tile_size, tile_y, 0, obj_end_tile);
	
	//instance_create_depth(x + global.tile_size * (width-1), tile_y, 0, obj_voidSpawn);
	void.des.lane = i;
}

