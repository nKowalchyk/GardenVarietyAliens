/// @description Insert description here
// You can write your code in this editor
x = lerp(spawnX, targetX, _step)
_angle = func_lerp_angle(-89, 89, _step)


if x < 1220 and x > 720
{
	_step += 0.002	
}
else
{
	_step += 0.02	
}



if _step > 1
{
	instance_destroy()	
}