///func_fire_projectile(plant_obj, bullet_type)

plant_obj = argument0;
bullet_type = argument1;

if (plant_obj == noone)
{
	return 0
}


var set_damage = plant_obj.damage;


var set_velocity = 3;
var sprite_depth = -2;

switch (bullet_type)
{
	case hats.cowboy:
	{
		var inst = instance_create_depth((plant_obj.x + plant_obj.sprite_width / 2)+60, plant_obj.y + plant_obj.sprite_height / 4, sprite_depth, obj_projectile_six);
		break;
	}
	case hats.wizard:
	{
		var inst = instance_create_depth((plant_obj.x + plant_obj.sprite_width / 2)+60, plant_obj.y + plant_obj.sprite_height / 4, sprite_depth, obj_projectile_sine);
		break;
	}
	case hats.helmet:
	{
		var inst = instance_create_depth((plant_obj.x + plant_obj.sprite_width / 2)+60, plant_obj.y + plant_obj.sprite_height / 4, sprite_depth, obj_projectile_spread);
		break;
	}
	
	default:
		var inst = instance_create_depth((plant_obj.x + plant_obj.sprite_width / 2)+60, plant_obj.y + plant_obj.sprite_height / 4, sprite_depth, obj_projectile);
		break;
	
}


with(inst) {
	sprite_index = func_plant_sprite(other.plant_type)
	_red = other._red
	_green = other._green
	_blue = other._blue
	velocity = set_velocity;
	damage = set_damage;
}