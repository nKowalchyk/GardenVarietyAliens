/// @description Insert description here

// vars
width = global.grid_width;
height = global.grid_height;

grid = ds_list_create();
rows_can_fire = ds_list_create();

// Creating and populating the grid
for(i = 0; i < height; i++) {
	var row = ds_list_create();
	var tile_y = y + global.tile_size * i;
	for(j = 0; j < width; j++) {
		var tile_x = x + global.tile_size * j;
		var tile = instance_create_depth(tile_x, tile_y, 1, obj_tile);
		ds_list_add(row, tile);
	}
	ds_list_add(grid, row);
	ds_list_add(rows_can_fire, false);
	instance_create_depth(x + global.tile_size * (width-1), tile_y, 0, obj_enemy);
}

