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

draw_set_colour(c_black);
draw_set_font(fnt_gui)
draw_set_halign(fa_center)
draw_text(
x + global.tile_size + 3*(global.tile_size / 4)+9,
y+90,
string(global.damage_counter)
)

draw_text(
x + global.tile_size + global.tile_size + 3*(global.tile_size / 4)+9,
y+90,
string(global.rate_counter)
)

draw_text(
x + global.tile_size + global.tile_size + global.tile_size + 3*(global.tile_size / 4)+9,
y+90,
string(global.hp_counter)
)
