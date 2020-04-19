/// @description Insert description here
// You can write your code in this editor





var inst = instance_place(x + x_speed, y, obj_plent);

if(inst == noone) {
	x += x_speed;
}
else if(can_attack && inst != noone){
	can_attack = false;
	alarm[0] = room_speed * attack_rate;
	inst.hp -= damage;
	//show_debug_message("attacking");
}

if(hp <= 0) {
	instance_destroy(self);	
}