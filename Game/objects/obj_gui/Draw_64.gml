/// @description Insert description here

draw_rectangle_colour(
	gui_element_list[| selected_index].x,
	gui_element_list[| selected_index].y,
	gui_element_list[| selected_index].x + global.tile_size,
	gui_element_list[| selected_index].y + global.tile_size,
	c_green,
	c_green,
	c_green,
	c_green,
	true
);