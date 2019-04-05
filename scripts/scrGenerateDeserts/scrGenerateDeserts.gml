repeat(25) {
	var startx, starty, xx, yy;
	var total_forest_tiles = 0;
	found = false;
	end_found = false;


	while (!found) {
		randomize();
		startx = irandom(ds_grid_width(map_er));
		starty = irandom(ds_grid_height(map_er));
		if (ds_grid_get(map_er, startx, starty)) == "ground" {
			xx = startx;
			yy = starty;
			found = true;
		}
	}



	while (total_forest_tiles < 350) {
		randomize();
		general_direction = irandom(3);
				
		if (general_direction == 0) yy--;
		if (general_direction == 1) xx++;
		if (general_direction == 2) yy++;
		if (general_direction == 3) xx--;
				
		if (ds_grid_get(map_er, xx, yy)) == "ground" {
			ds_grid_set(map_er, xx, yy, "desert");
			total_forest_tiles++;
			continue;
		
		} else if (ds_grid_get(map_er, xx, yy)) == "ocean" || (ds_grid_get(map_er, xx, yy)) == "water" || (ds_grid_get(map_er, xx, yy)) == "forest"
		|| (ds_grid_get(map_er, xx, yy)) == "mountain" {
			if (ds_grid_get(map_er, xx, yy-2)) == "ground" {
				yy -= 1;
				show_debug_message("up");
			} else if (ds_grid_get(map_er, xx+2, yy)) == "ground" {
				xx += 1;
				show_debug_message("right");
			} else if (ds_grid_get(map_er, xx, yy+2)) == "ground" {
				yy += 1;
				show_debug_message("down");
			} else if (ds_grid_get(map_er, xx-2, yy)) == "ground" {
				xx -= 1;
				show_debug_message("left");
			} else {
				break;	
			}
			continue;
		}

		if (xx > ds_grid_width(map_er) || yy > ds_grid_height(map_er) || xx < 0 || yy < 0) {
			break;	
		}
	}		
}

generation_state = generation.beaches;