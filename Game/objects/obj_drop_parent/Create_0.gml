/// @description Insert description here
// You can write your code in this editor

width = 64;
height = 64;
fall_speed = 2;
x_speed = irandom(100)/100;
spawn_point = y;
landing_spot = spawn_point + 84;
bounce_counter = 2;
bouncing = false;
bounce_point = 0;

_strength = 0;

if irandom(1)
{
	x_speed = -1*x_speed
}