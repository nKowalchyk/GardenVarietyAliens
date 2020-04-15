/// @description 

for(i = 0; i < ds_list_size(grid); i++) {
	var row = grid[| i];
	rows_can_fire[| i] = false;
	var can_fire = false;
	for(j = 0; j < ds_list_size(row); j++) {
		var inst = row[| j];
		with inst {
			if(instance_place(x, y, obj_enemy)) {
				can_fire = true;
			}
		}
	}
	rows_can_fire[| i] = can_fire;
}

for(i = 0; i < ds_list_size(grid); i++) {
	var row = grid[| i];
	for(j = 0; j < ds_list_size(row); j++) {
		row[| j].row_can_fire = rows_can_fire[| i];
	}
}