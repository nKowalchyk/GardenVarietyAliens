/// @description Insert description here
// You can write your code in this editor
draw_self();
func_draw_colored(_red, _green, _blue, func_plant_sprite(plant_type), 0)




switch(hat)
{
	case hats.none:
		break;
	case hats.cowboy:
		draw_sprite(spr_cowboy, image_index, x, y-24)
		break;
	case hats.wizard:
		draw_sprite(spr_wizard, image_index, x, y-24)
		break;
	case hats.helmet:
		draw_sprite(spr_helmet, image_index, x, y-21)
		break;
}
