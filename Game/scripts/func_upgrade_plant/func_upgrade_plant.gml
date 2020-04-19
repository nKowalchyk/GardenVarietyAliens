var drop_type = argument0;
var plant = argument1;

switch(drop_type) {
	case drop_types.damage:
		if(global.damage_counter>0){
			global.damage_counter -= 1;
			switch(plant.level){
				case 0:
					plant.level++;
					plant.damage+=1;
					plant._green = 0;
					plant._blue = 0;
					instance_create_depth(x, y, -5, obj_sparkle)
					
					break;
				case 1:
					plant.level++;
					plant.plant_type = plant_types.daffodil;
					plant.damage+=1;
					instance_create_depth(x, y, -5, obj_sparkle)
					break;
				case 2:
					plant.level++;
					plant.hat = hats.cowboy;
					plant.damage = plant.damage/5;
					instance_create_depth(x, y, -5, obj_sparkle)
					break;
				default:
					global.damage_counter += 1;
					break;
			}
		}
	break;

	case drop_types.rate:
		if(global.rate_counter>0){
			global.rate_counter -= 1;
			switch(plant.level){
				case 0:
					plant.level++;
					plant.attack_rate = plant.attack_rate*0.8;
					plant._red = 0;
					plant._blue = 0;
					instance_create_depth(x, y, -5, obj_sparkle)
					break;
				case 1:
					plant.level++;
					plant.plant_type = plant_types.rose;
					plant.attack_rate = plant.attack_rate*0.5;
					instance_create_depth(x, y, -5, obj_sparkle)
					break;
				case 2:
					plant.level++;
					plant.hat = hats.wizard;
					plant.attack_rate = plant.attack_rate*0.8;
					instance_create_depth(x, y, -5, obj_sparkle)
					break;
				default:
					global.rate_counter += 1;
					break;
			}
		}
	break;
	
	case drop_types.hp:
		if(global.hp_counter>0){
			global.hp_counter -= 1;
			switch(plant.level){
				case 0:
					plant.level++;
					plant.hp += obj_enemy_spawner._level;
					plant._red = 0;
					plant._green = 0;
					instance_create_depth(x, y, -5, obj_sparkle)
					break;
				case 1:
					plant.level++;
					plant.plant_type = plant_types.poofy;
					plant.hp += obj_enemy_spawner._level;
					instance_create_depth(x, y, -5, obj_sparkle)
					break;
				case 2:
					plant.level++;
					plant.hat = hats.helmet;
					plant.hp += obj_enemy_spawner._level;
					instance_create_depth(x, y, -5, obj_sparkle)
					break;
				default:
				global.hp_counter += 1;
					break;
			}
		}
	break;

	default:
		break;
}

