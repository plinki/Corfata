randomize();
NORTH = 1
WEST = 2
EAST = 4
SOUTH =	8

dungeon_map = layer_tilemap_get_id("Dungeon")


dungeon_grid = ds_grid_create(100, 100);

ds_grid_set_region(dungeon_grid, 0, 0, ds_grid_width(dungeon_grid) - 1, ds_grid_height(dungeon_grid) - 1, "Void");

drunkard_x = (ds_grid_width(dungeon_grid) - 1)/2;
drunkard_y = (ds_grid_height(dungeon_grid) - 1)/2;
drunkard_direction = irandom(3);
steps = 1500;

repeat(steps) {
	
	ds_grid_set(dungeon_grid, drunkard_x, drunkard_y, "Floor");
	
	if (irandom(3) <3 ) {
		drunkard_direction = irandom(3);			
	}
	
	
	drunkard_direction_x = lengthdir_x(1, drunkard_direction * 90);
	drunkard_direction_y = lengthdir_y(1, drunkard_direction * 90);
	
	drunkard_x += drunkard_direction_x;
	drunkard_y += drunkard_direction_y;
	
	
	if (drunkard_x < 2 || drunkard_x >= ds_grid_width(dungeon_grid)-3) 
		drunkard_x += - drunkard_direction_x * 2;
		
	
	if (drunkard_y < 2 || drunkard_y >= ds_grid_height(dungeon_grid)-3)
		drunkard_y += - drunkard_direction_y * 2;
		
	
	
}

//for (i = 1 ; i < ds_grid_height(dungeon_grid) - 1 ; i++ ) {
//	for (j = 1 ; j < ds_grid_width(dungeon_grid) - 1 ; j++ ) {
//		if (ds_grid_get(dungeon_grid, j, i) != "Floor") {
			
//			tile_north = ds_grid_get(dungeon_grid, j, i-1) == "Void";
//			tile_south = ds_grid_get(dungeon_grid, j, i+1) == "Void";
//			tile_east = ds_grid_get(dungeon_grid, j+1, i) == "Void";
//			tile_west = ds_grid_get(dungeon_grid, j-1, i) == "Void";
			
//			tile_index = NORTH * tile_north + WEST * tile_west + EAST * tile_east + SOUTH * tile_south + 1;	
//			if tile_index == 1
//				ds_grid_set(dungeon_grid, j,i, "Floor");
//		}
//	}
//}

for (i = 1 ; i < ds_grid_height(dungeon_grid) - 1 ; i++ ) {
	for (j = 1 ; j < ds_grid_width(dungeon_grid) - 1 ; j++ ) {
		if (ds_grid_get(dungeon_grid, j, i) != "Floor") {
			
			tile_north = ds_grid_get(dungeon_grid, j, i-1) == "Void";
			tile_south = ds_grid_get(dungeon_grid, j, i+1) == "Void";
			tile_east = ds_grid_get(dungeon_grid, j+1, i) == "Void";
			tile_west = ds_grid_get(dungeon_grid, j-1, i) == "Void";
			
			tile_index = NORTH * tile_north + WEST * tile_west + EAST * tile_east + SOUTH * tile_south + 1;	
			tilemap_set(dungeon_map, tile_index, j, i);
			instance_create_layer(j*16, i*16, "Instances",  objWall);
		}
	}
}

player_set = false;

while (player_set == false) {
	player_x = irandom(ds_grid_width(dungeon_grid)-1);
	player_y = irandom(ds_grid_height(dungeon_grid)-1);
	
	if ds_grid_get(dungeon_grid, player_x, player_y) == "Floor" {
		instance_create_layer(player_x*16, player_y*16, "Instances",  DungeonPlayer);
		player_set = true;
	}
}