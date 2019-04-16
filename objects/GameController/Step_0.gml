if (keyboard_check_pressed(ord("R"))) {
	instance_destroy(objCastle);
	// fix here
	surface_set_target(SurfaceController.map_surface);
	draw_clear_alpha(c_white, 0);
	surface_reset_target();
	instance_destroy(MapGenerator);
	instance_destroy(SurfaceController);
	randomize();
	instance_create_depth(0, 0, 10, MapGenerator);
}


if (MapGenerator.generation_state = generation.nothing && castles_generated = false) {
	repeat(4) {
		var startx, starty, startx, starty;
		found = false;
		end_found = false;

		while (!found) {
			randomize();
			startx = irandom(ds_grid_width(MapGenerator.map_er));
			starty = irandom(ds_grid_height(MapGenerator.map_er));
			free_space = 0;
			if (ds_grid_get(MapGenerator.map_er,startx-10, starty) == "ground") free_space++;
			if (ds_grid_get(MapGenerator.map_er,startx+10, starty) == "ground") free_space++;
			if (ds_grid_get(MapGenerator.map_er,startx, starty-10) == "ground") free_space++;
			if (ds_grid_get(MapGenerator.map_er,startx, starty+10) == "ground") free_space++;
			
			if (ds_grid_get(MapGenerator.map_er, startx, starty) == "ground" 
			&& free_space >= 2 
			&& !collision_circle(MapGenerator.tile_size * startx + MapGenerator.starting_point_x,
			MapGenerator.tile_size * starty + MapGenerator.starting_point_y, 35, objCastle, false, true)) {
				instance_create_depth(MapGenerator.tile_size * startx + MapGenerator.starting_point_x, 
				MapGenerator.tile_size * starty + MapGenerator.starting_point_y, 6, objCastle);
				found = true;
				continue;
			}
		}
	} castles_generated = true;
}