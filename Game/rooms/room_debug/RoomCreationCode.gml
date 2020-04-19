func_init();

// These need to be initialized on room startup
instance_create_depth(0, 0, -1, obj_gui);

var map_x = (room_width - (global.tile_size * global.grid_width)) / 2;
var map_y = ((room_height - (global.tile_size * global.grid_height)) / 2)+220;

instance_create_depth(map_x, map_y, 0, obj_map);
instance_create_depth(0, 0, -3000, obj_void);
instance_create_depth(0, 0, 0, obj_enemy_spawner);

global._score = 0;