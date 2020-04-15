///func_fire_projectile(plant_obj, bullet_type)

plant_obj = argument0;
bullet_type = argument1;

var set_damage = plant_obj.damage;
var set_velocity = 3;
var sprite_depth = -2;

var inst = instance_create_depth(plant_obj.x + plant_obj.sprite_width / 2, plant_obj.y + plant_obj.sprite_height / 4, sprite_depth, obj_projectile);

with(inst) {
	velocity = set_velocity;
	damage = set_damage;
}