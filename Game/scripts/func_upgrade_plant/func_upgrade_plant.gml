var drop_type = argument0;
var plant = argument1;

switch(drop_type) {
	case drop_types.damage:
		if(global.damage_counter>0){
			global.damage_counter -= 1;
			switch(plant.level){
				case 0:
					plant.damage+=2;
					plant._green = 0;
					plant._blue = 0;
					break;
				case 1:
					plant.plant_type = plant_types.daffodil;
					plant.damage+=2;
					break;
				case 2:
					plant.hat = hats.cowboy;
					plant.damage+=2;
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
					plant.attack_rate = plant.attack_rate*0.8;
					plant._red = 0;
					plant._blue = 0;
					break;
				case 1:
					plant.plant_type = plant_types.rose;
					plant.attack_rate = plant.attack_rate*0.8;
					break;
				case 2:
					plant.hat = hats.wizard;
					plant.attack_rate = plant.attack_rate*0.8;
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
					plant.hp += 2;
					plant._red = 0;
					plant._green = 0;
					break;
				case 1:
					plant.plant_type = plant_types.poofy;
					plant.hp += 2;
					break;
				case 2:
					plant.hat = hats.helmet;
					plant.hp += 2;
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

plant.level++;