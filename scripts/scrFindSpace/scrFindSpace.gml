/*This script will go over every cell and check how many of it's 8
neighbours are a the specificied tile.
scrFindSpace(x, y, ds_grid, radius, tile_to_check);*/
var cell_count = 0;
var _x = argument0, _y = argument1;
var stage_map = argument2;
			
for (var neighbourY = _y - argument3; neighbourY <= _y + 1; neighbourY++) {
	for (var neighbourX = _x - argument3; neighbourX <= _x + 1; neighbourX++) {
		if (neighbourX >= 0 and neighbourX < ds_grid_width(stage_map) and neighbourY >= 0 and neighbourY < ds_grid_height(stage_map)) {
			if (ds_grid_get(stage_map, neighbourX, neighbourY) == argument4) {
				cell_count++;	
			}
			
			} else {
				cell_count++;
		}
	}
}

return cell_count;