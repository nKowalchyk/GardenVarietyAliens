do
{
	var spawnLane = irandom(4);


} until (global.lane[spawnLane] == true or !(global.lane[0] or global.lane[1] or global.lane[2] or global.lane[3] or global.lane[4]));

return spawnLane;