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

if MapGenerator.generation_state == generation.nothing  {
	if castles_generated <= 10 {
	
		var startx, starty;
		found = false;
		end_found = false
	
		while (!found) {
			randomize();
			startx = irandom(ds_grid_width(MapGenerator.map_er)-1);
			starty = irandom(ds_grid_height(MapGenerator.map_er)-1);
			free_space = 0;
		
			if ds_grid_get(MapGenerator.map_er, startx, starty) == "ground" {
			
				if (ds_grid_get(MapGenerator.map_er,startx+1, starty) == "ground") free_space++;
				if (ds_grid_get(MapGenerator.map_er,startx+1, starty+1) == "ground") free_space++;
				if (ds_grid_get(MapGenerator.map_er,startx, starty+1) == "ground") free_space++;
	
			}
		
			if free_space == 3
			&& collision_circle(startx*10, starty*10, 200, objCastle, false, true) == noone {
				instance_create_depth(startx*10, starty*10, 6, objCastle);
				found = true;
				castles_generated ++;
	
			}
		}
	}
}