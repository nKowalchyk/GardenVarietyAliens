//func_mouse_collision(obj)

/*
*	Returns true if the mouse is colliding with the given object
*/

var obj = argument0;

	if(mouse_x > obj.x &&
		mouse_x < obj.x + obj.width &&
		mouse_y > obj.y &&
		mouse_y < obj.y + obj.height ) {
			return true;		
	}
	else {
		return false;	
	}
