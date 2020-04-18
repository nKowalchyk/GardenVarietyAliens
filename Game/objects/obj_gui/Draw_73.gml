/// @description Insert description here

draw_sprite(spr_gui_selector, 0, gui_element_list[| selected_index].x, gui_element_list[| selected_index].y)

/*draw_rectangle_colour(
	gui_element_list[| selected_index].x,
	gui_element_list[| selected_index].y,
	gui_element_list[| selected_index].x + global.tile_size,
	gui_element_list[| selected_index].y + global.tile_size,
	c_green,
	c_green,
	c_green,
	c_green,
	true
);*/

draw_set_colour(c_white);
draw_text(
x + global.tile_size + 3*(global.tile_size / 4),
y+100,
string(global.damage_counter)
)

draw_text(
x + global.tile_size + global.tile_size + 3*(global.tile_size / 4),
y+100,
string(global.rate_counter)
)

draw_text(
x + global.tile_size + global.tile_size + global.tile_size + 3*(global.tile_size / 4),
y+100,
string(global.hp_counter)
)
