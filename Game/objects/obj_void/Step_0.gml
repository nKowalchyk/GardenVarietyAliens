/// @description Insert description here
// You can write your code in this editor
_angle += 15;
_angle2 += 10;
_angle3 += 25;
_angle4 += 12;
_angle5 += 20;



x = mouse_x;
y = mouse_y;

if mouse_check_button(mb_right)
{
	visible = true;
	_scale+=0.1
}
else
{
	_scale-=0.1
}



_scale = clamp(_scale, 0, 1)

if _scale == 0
{
	visible = false;	
}