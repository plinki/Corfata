/*This script will go over every cell and check how many of it's 8
neighbours are a water cell. It will increment water_count by the 
amount of water cells, and eventually return water_count*/
var water_count = 0;
var _x = argument0, _y = argument1;
var stage_map = argument2;
			
for (var neighbourY = _y - 1; neighbourY <= _y + 1; neighbourY++) {
	for (var neighbourX = _x - 1; neighbourX <= _x + 1; neighbourX++) {
		if (neighbourX >= 0 and neighbourX < ds_grid_width(stage_map) and neighbourY >= 0 and neighbourY < ds_grid_height(stage_map)) {
			if (ds_grid_get(stage_map, neighbourX, neighbourY) == "water") {
				water_count++;	
			}
			
			} else {
				water_count++;
		}
	}
}

return water_count;