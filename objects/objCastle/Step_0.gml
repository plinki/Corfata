if player_inside && !dungeon_created {
	show_debug_message("creating dung");
	var startx, starty;
	found = false;
	end_found = false
	
	while (!found) {
		randomize();
		startx = irandom_range(grid_x - 10, grid_x + 10)
		starty = irandom_range(grid_y - 10, grid_y + 10)
		free_space = 0;
		
		if ds_grid_get(MapGenerator.map_er, startx, starty) != "water" && ds_grid_get(MapGenerator.map_er, startx, starty) != "ocean" {
			
			if ds_grid_get(MapGenerator.map_er,startx, starty+1) == ds_grid_get(MapGenerator.map_er, startx, starty) free_space++;
	
		}
		
		if free_space == 1 
		&& collision_circle(startx*10, starty*10, 200, objDungeon, false, true) == noone {
			instance_create_depth(startx*10, starty*10, 6, objDungeon);
			found = true;

	
		}
	}
	dungeon_created = true;
}