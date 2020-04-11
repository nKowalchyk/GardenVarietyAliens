/// @description Insert description here
// You can write your code in this editor

x += velocity;

var inst = instance_place(x + velocity, y, obj_enemy);
if(inst != noone) {
	inst.hp -= damage;
	instance_destroy(self);
}