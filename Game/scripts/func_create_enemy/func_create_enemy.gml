
var _level = argument0

if ((global.lane[0] or global.lane[1] or global.lane[2] or global.lane[3] or global.lane[4]))
{

	var spawnTile = obj_map.voidGrid[|func_getLane()]
	spawnTile = spawnTile[|irandom(2)];
		
	var _spawn = instance_create_depth(spawnTile.x, spawnTile.y, depth, obj_voidSpawn)
	_spawn._enemyLevel = _level;

}