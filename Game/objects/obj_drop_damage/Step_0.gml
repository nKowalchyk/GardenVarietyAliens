/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_right) && 
func_mouse_collision(self)){
	global.damage_counter++;
	
	instance_destroy(self);
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