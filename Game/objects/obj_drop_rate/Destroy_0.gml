/// @description Insert description here
// You can write your code in this editor
global.rate_counter++;

if global.rate_counter >= 100
{
	global.rate_counter--
	global._score++
}