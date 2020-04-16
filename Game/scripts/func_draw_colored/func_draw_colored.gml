/// @function  func_draw_colored(r, g, b)
/// @argument  r
/// @argument  g
/// @argument  b

var _r = argument[0];
var _g = argument[1];
var _b = argument[2];

shader_set(shd_recolor)
shader_params = shader_get_uniform(shd_recolor, "modColor")
shader_set_uniform_f(shader_params, _r, _g, _b, 1.0)
draw_self()
shader_reset()