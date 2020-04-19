/// @function  func_draw_colored(r, g, b, sprite)
/// @argument  r
/// @argument  g
/// @argument  b
/// @argument sprite
/// @argument index

var _r = argument[0];
var _g = argument[1];
var _b = argument[2];
var _sprite = argument[3];
var _index = argument[4];

shader_set(shd_recolor)
shader_params = shader_get_uniform(shd_recolor, "modColor")
shader_set_uniform_f(shader_params, _r, _g, _b, 1.0)
draw_sprite(_sprite, _index, x+offX, y+offY)
shader_reset()