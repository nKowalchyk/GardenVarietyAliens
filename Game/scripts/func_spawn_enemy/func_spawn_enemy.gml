/// @function     func_spawn_enemy(level)
/// @description  Spawns an enemy
/// @argument     level

var _level = argument[0];

var inst = instance_create_depth(x-64, y-64, depth, obj_enemy);
inst._level = _level;
inst._colR = 0;
inst._colG = 0;
inst._colB = 0;
	
inst.hp+=_level
inst.damage+=_level/2
	

	
	
if _level < 3
{
	switch(irandom(2))
	{
		case(0):
			inst.hp += _level;
			inst.x_speed += 0.4
			inst._colB += 0.5;
			break;
		case(1):
			inst.damage += _level/2;
			inst.x_speed += 0.25
			inst._colR += 0.5;
			break;
		case(2):
			inst.x_speed -= _level/2;
			inst.x_speed = clamp(inst.x_speed, -5, -1)
			inst._colG += 0.5;
			break;
	}
}
else if _level < 10
{
	

	
	switch(irandom(2))
	{
		case(0):
			inst.hp += _level;
			inst.x_speed += 0.4
			inst._colB += 0.5;
			break;
		case(1):
			inst.damage += _level/2;
			inst.x_speed += 0.25
			inst._colR += 0.5;
			break;
		case(2):
			inst.x_speed -= _level/2;
			inst._colG += 0.5;
			inst.x_speed = clamp(inst.x_speed, -1, -3)
			break;
	}
	if irandom(1)
	{
			switch(irandom(2))
			{
				case(0):
					inst.hp += _level;
					inst.x_speed += 0.4
					inst._colB += 0.5;
					
					if inst._colB == 1
					{
						inst.hp = inst.hp*2;	
					}
					
					break;
				case(1):
					inst.damage += _level/2;
					inst.x_speed += 0.25
					inst._colR += 0.5;
					
					if inst._colR == 1
					{
						inst.damage = inst.damage*2	
					}
					
					break;
				case(2):
					inst.x_speed -= _level/2;
					inst._colG += 0.5;
					inst.x_speed = clamp(inst.x_speed, -5, -1)
					if inst._colG == 1
					{
						inst.x_speed = inst.x_speed*2	
					}
					
					break;
			}	
	}
}
else
{
	do 
	{
		var _test = irandom(100)
		
		
		
		
		switch(irandom(2))
		{
			case(0):
				if inst._colB == 1
				{
					_test = -5;
				}	
				else
				{
					inst.hp += _level;
					inst.x_speed += 0.4
					inst._colB += 0.5;
					
					if inst._colB == 1
					{
						inst.hp = inst.hp*2;	
					}
					
				}
				
				break;
			case(1):
			
				if inst._colR == 1
				{
					_test = -5;
				}	
				else
				{
					inst.damage += _level/2;
					inst.x_speed += 0.25
					inst._colR += 0.5;
					
					if inst._colR == 1
					{
						inst.damage = inst.damage*2	
					}
				}
					
				break;
			case(2):
			
				if inst._colG == 1
				{
					_test = -5;
				}	
				else
				{
					inst.x_speed -= _level/2;
					inst._colG += 0.5;
					inst.x_speed = clamp(inst.x_speed, -5, -1)
					if inst._colG == 1
					{
						inst.x_speed = inst.x_speed*2	
					}
				}
				
				break;
		}
		
	inst.x_speed = min(inst.x_speed, -0.1)
	
	
	} until ((_test>_level+20) or (inst._colR == 1 and inst._colB == 1 and inst._colG == 1));
}