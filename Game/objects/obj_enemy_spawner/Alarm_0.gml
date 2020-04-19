/// @description Insert description here
// You can write your code in this editor


switch(_wave)
{	
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
		alarm[0] = 240;
		func_spawn_wave(_level, 0)
		break;
		
	case 6:
		alarm[0] = 780
		alarm[1] = 360
		func_spawn_wave(_level, 1)
		break;
		
	case 15:
		_level++
		func_spawn_wave(_level, 1)
		instance_create_depth(2500, 600, 0, obj_difficulty_increase)
		alarm[1] = 400;
		alarm[0] = 200
		break;
		
	case 17:
		func_spawn_wave(_level, 1)
		alarm[1] = 10;
		alarm[0] = 300
		break;
		
	case 23:
		_level++
		func_spawn_wave(_level, 1)
		instance_create_depth(2500, 600, 0, obj_difficulty_increase)
		alarm[1] = 40;
		alarm[0] = 1
		break;


	case 30:
		func_spawn_wave(_level, irandom(2))
		alarm[2] = irandom(360)+40;
		alarm[0] = irandom(200)+30
		_wave+=irandom(7)
		break;
		
		
	case 45:
		_level++
		instance_create_depth(2500, 600, 0, obj_difficulty_increase)
		func_spawn_wave(_level, 1)
		alarm[2] = irandom(360)+40;
		alarm[0] = irandom(100)+30
		break;
	default:
		alarm[0] = max(120+irandom(60)-(_level*3), 15);
		show_debug_message(_wave)
		func_spawn_wave(_level, 0)
		
		if _wave > 45
		{
			_wave = 29	
		}
		break;
}