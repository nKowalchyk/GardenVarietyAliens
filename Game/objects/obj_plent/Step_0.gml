/// @description Insert description here
// You can write your code in this editor

if(hp <= 0) {
	instance_destroy(self);
	if(tile != noone) {
		tile.tower = noone;	
	}
}

if !enemy_in_range
{
	image_index = 0;	
}

switch (image_index)
{
	case 0:
		offX = 24;
		offY = 28;
		break;
	case 1:
		offX = 26;
		offY = 27;
		break;
	case 2:
		offX = 30;
		offY = 29;
		break;
}



if(can_attack && enemy_in_range) {
	can_attack = false;
	//image_index = 0;
	alarm[0] = room_speed * attack_rate;
	alarm[1] = (room_speed * attack_rate)-5; 
	func_fire_projectile(self, plant_type);
}
