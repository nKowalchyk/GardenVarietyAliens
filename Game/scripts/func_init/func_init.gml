///func_init()

//config values
global.grid_width = 9;
global.grid_height = 5;
global.tile_size = 128;

randomize();


enum hats {
	none,
	wizard,
	cowboy,
	helmet
}

// used for development, remove before release
enum debug_plents {
	debug_plent,
	debug_plent_2
}

enum plant_types {
	lily,
	daffodil,
	rose,
	poofy
}

enum enemy_types {
	alien
}

enum drop_types {
	damage,
	rate,
	hp
}

//game state values
global.current_build_plant = debug_plents.debug_plent;

//drop countera
global.damage_counter = 99;
global.rate_counter = 99;
global.hp_counter = 99;