/// @description Insert description here
// You can write your code in this editor

if(hp <= 0) {
	instance_destroy(self);
	if(tile != noone) {
		tile.tower = noone;	
	}
}

if(can_attack && enemy_in_range) {
	can_attack = false;
	alarm[0] = room_speed * attack_rate;
	func_fire_projectile(self, plant_type);
}