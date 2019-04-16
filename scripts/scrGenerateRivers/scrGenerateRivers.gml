repeat(25) {
	var startx, starty, xx, yy;
	var total_river_tiles = 0;
	found = false;
	end_found = false;


	while (!found) {
		randomize();
		startx = irandom(ds_grid_width(map_er) - 1);
		starty = irandom(ds_grid_height(map_er) - 1);
		if (ds_grid_get(map_er, startx, starty)) == "ground" {
			xx = startx;
			yy = starty;
			found = true;
		}
	}

	randomize();
	general_direction = irandom(3);

	while (!end_found) {	
			if (general_direction == 0) { 
				randomize();
				move_direction = irandom(2);
				if (move_direction == 0) yy--;
				if (move_direction == 1) xx++;
				if (move_direction == 2) xx--;
			}
		
			if (general_direction == 1) { 
				randomize();
				move_direction = irandom(2);
				if (move_direction == 0) xx++;
				if (move_direction == 1) yy--;
				if (move_direction == 2) yy++;
			}
		
			if (general_direction == 2) { 
				randomize();
				move_direction = irandom(2);
				if (move_direction == 0) yy++;
				if (move_direction == 1) xx++;
				if (move_direction == 2) xx--;
			}
		
			if (general_direction == 3) { 
				randomize();
				move_direction = irandom(2);
				if (move_direction == 0) xx--;
				if (move_direction == 1) yy--;
				if (move_direction == 2) yy++;
			}
			
			if (total_river_tiles < 75) {
				if (ds_grid_get(map_er, xx, yy)) == "ground" {
					ds_grid_set(map_er, xx, yy, "water");
					total_river_tiles++;
					continue;
				} else if (ds_grid_get(map_er, xx, yy)) == "ocean" {
					break;
				} else if (ds_grid_get(map_er, xx, yy)) == "water" {
					continue;
				} else {
					end_found = true;
					break;	
				}
			
			} else {
				if (xx > ds_grid_width(map_er) || yy > ds_grid_height(map_er) || xx < 0 || yy < 0) {
					break;	
				} else {
					continue;
			}
		}
	}		
}
generation_state = generation.mountains;