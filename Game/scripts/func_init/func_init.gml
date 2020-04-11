///func_init()

//config values
global.grid_width = 9;
global.grid_height = 5;
global.tile_size = 128;

enum hats {
	wizard,
	cowboy,
	helmet
}

// used for development, remove before release
enum debug_plents {
	debug_plent,
	debug_plent_2
}

enum basic_plants {
	sprout
}

enum evolved_plants {
	
}

enum enemy_types {
	alien
}

//game state values
global.current_build_plant = debug_plents.debug_plent;