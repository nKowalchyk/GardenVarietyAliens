/// @function     func_spawn_wave(level, difficulty)
/// @description  Spawns a wave of enemies
/// @argument     level     
/// @argument     difficulty

var _level = argument[0];
var _difficulty = argument[1];


_wave++

switch(_difficulty)
{
	case 0:
	{
		func_create_enemy(_level)
		break;
	}
	case 1:
	{
		func_create_enemy(_level)
		func_create_enemy(_level)
		func_create_enemy(_level)
		if irandom(1)
		{
			func_create_enemy(_level)
		}
		break;
	}
	case 2:
	{
		func_create_enemy(_level)
		func_create_enemy(_level)
		func_create_enemy(_level)
		func_create_enemy(_level)
		if irandom(1)
		{
			func_create_enemy(_level)
		}
		if irandom(1)
		{
			func_create_enemy(_level)
		}
		if irandom(1)
		{
			func_create_enemy(_level)
		}
		
		break;
	}
	
	
}