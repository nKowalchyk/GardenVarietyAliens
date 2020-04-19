/// @description Insert description here
// You can write your code in this editor


if (point_distance(x, y, mouse_x, mouse_y) < 500) and mouse_check_button(mb_right)
{
	_strength = clamp(point_distance(x, y, mouse_x, mouse_y)/2000, 0, 0.5);
	fall_speed = 0;
	landing_spot = y
	x_speed = 0;
	
	if point_distance(x, y, mouse_x, mouse_y) < 50
	{
		var inst = instance_create_depth(x, y, depth, obj_gui_drop)
		inst.sprite_index = sprite_index;
		inst.targetX = targetX
		inst.targetY = targetY
		instance_destroy();	
	}
	
}	
else
{
	_strength = 0;	
}



if(y <= landing_spot){
	
	if((y == landing_spot || bouncing) && bounce_counter > 0){
		if(y == landing_spot){
			bounce_point = landing_spot - (bounce_counter * (60 / 3));	
		}
		bouncing = true;
		
		
		if(bouncing && y >= bounce_point){
			y -= fall_speed;
			if(y == bounce_point){
				bouncing = false;
				bounce_counter -= 1;
			}
		}
	}
	else{
		y += fall_speed;	
	}
}


if(y <= landing_spot){
	x -= x_speed;
}