/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_levelUp)
draw_set_color(c_white)
draw_text_transformed(x, y, "Game Over!\n"+string(global._score)+" Points!", 1, 1, _angle)