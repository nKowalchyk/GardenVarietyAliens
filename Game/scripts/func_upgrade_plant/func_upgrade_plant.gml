var drop_type = argument0;
var plant = argument1;

switch(drop_type) {
	case drop_types.damage:
		//Should take 1 damage drop resource
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
			//Should return used resources
				break;
		}
	break;

	case drop_types.rate:
		//Should take 1 rate drop resource
		switch(plant.level){
			case 0:
				plant.attack_rate = plant.attack_rate/2;
				plant._red = 0;
				plant._blue = 0;
				break;
			case 1:
				plant.plant_type = plant_types.rose;
				plant.attack_rate = plant.attack_rate/2;
				break;
			case 2:
				plant.hat = hats.wizard;
				plant.attack_rate = plant.attack_rate/2;
				break;
			default:
			//Should return used resources
				break;
		}
	break;
	
	case drop_types.hp:
		//Should take 1 rate drop resource
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
			//Should return used resources
				break;
		}
	break;

	default:
		break;
}

plant.level++;