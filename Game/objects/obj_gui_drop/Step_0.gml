/// @description Insert description here
// You can write your code in this editor
_step += 0.05


x = lerp(spawnX, targetX, _step)
y = lerp(spawnY, targetY, _step)

if _step >= 1
{
	instance_destroy()	
}