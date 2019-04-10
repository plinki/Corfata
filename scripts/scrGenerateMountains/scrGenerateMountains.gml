repeat(15) {
	var startx, starty, xx, yy;
	var total_mountain_tiles = 0;
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



	while (total_mountain_tiles < 350) {
		randomize();
		general_direction = irandom(3);
				
		if (general_direction == 0) yy--;
		if (general_direction == 1) xx++;
		if (general_direction == 2) yy++;
		if (general_direction == 3) xx--;
				
		if (ds_grid_get(map_er, xx, yy)) == "ground" {
			ds_grid_set(map_er, xx, yy, "mountain");
			total_mountain_tiles++;
			continue;
		
		} else if (ds_grid_get(map_er, xx, yy)) == "ocean" || (ds_grid_get(map_er, xx, yy)) == "water" {
			if (ds_grid_get(map_er, xx, yy-2)) == "ground" {
				yy -= 1;
			} else if (ds_grid_get(map_er, xx+2, yy)) == "ground" {
				xx += 1;
			} else if (ds_grid_get(map_er, xx, yy+2)) == "ground" {
				yy += 1;
			} else if (ds_grid_get(map_er, xx-2, yy)) == "ground" {
				xx -= 1;
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

for (i = 0; i < ds_grid_height(map_er); i++) {
	for (j = 0; j < ds_grid_width(map_er); j++) {
		randomize();
		if (ds_grid_get(map_er, j, i) == "ground") {
			if (ds_grid_get(map_er, j, i-1)) == "mountain" {
					if (irandom(100) < 75) ds_grid_set(map_er, j, i, "mountainslope");
				} else if (ds_grid_get(map_er, j+1, i)) == "mountain" {
					if (irandom(100) < 75) ds_grid_set(map_er, j, i, "mountainslope");
				} else if (ds_grid_get(map_er, j, i+1)) == "mountain" {
					if (irandom(100) < 75) ds_grid_set(map_er, j, i, "mountainslope");
				} else if (ds_grid_get(map_er, j-1, i)) == "mountain" {
					if (irandom(100) < 75) ds_grid_set(map_er, j, i, "mountainslope");
			}
		}
	}
}
generation_state = generation.forests;