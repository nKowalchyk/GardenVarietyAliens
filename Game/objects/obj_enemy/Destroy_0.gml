/// @description Insert description here
// Maybe add multiple drops
droprate = random_range(1, 100);

if(droprate <= 30){
	instance_create_depth(x, y, depth, obj_drop_damage);
}else if(droprate > 30 && droprate <= 60){
	instance_create_depth(x, y, depth, obj_drop_rate);
}else if(droprate > 60 && droprate <= 90){
	instance_create_depth(x, y, depth, obj_drop_hp);
}else if(droprate > 90){
		
}
