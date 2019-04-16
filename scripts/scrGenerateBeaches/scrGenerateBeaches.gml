for (i = 0; i < ds_grid_height(map_er) - 1; i++) {
	for (j = 0; j < ds_grid_width(map_er) - 1; j++) {
		if (ds_grid_get(map_er, j, i) == "ground") {
			if (ds_grid_get(map_er, j, i-1)) == "ocean" || (ds_grid_get(map_er, j, i-1)) == "water" {
				if (irandom(100) < 85) ds_grid_set(map_er, j, i, "desert");
			} else if (ds_grid_get(map_er, j+1, i)) == "ocean" || (ds_grid_get(map_er, j+1, i)) == "water" {
				if (irandom(100) < 85) ds_grid_set(map_er, j, i, "desert");
			} else if (ds_grid_get(map_er, j, i+1)) == "ocean" || (ds_grid_get(map_er, j, i+1)) == "water" {
				if (irandom(100) < 85) ds_grid_set(map_er, j, i, "desert");
			} else if (ds_grid_get(map_er, j-1, i)) == "ocean" || (ds_grid_get(map_er, j-1, i)) == "water" {
				if (irandom(100) < 85) ds_grid_set(map_er, j, i, "desert");
			}
		}
	}
}

for (i = ds_grid_height(map_er) - 1; i > 0; i--) {
	for (j = ds_grid_height(map_er) - 1; j > 0; j--) {
		if (ds_grid_get(map_er, j, i) == "ground") {
			if (ds_grid_get(map_er, j-1, i-1)) == "desert" {
				if (irandom(100) < 20) ds_grid_set(map_er, j, i, "desert");
			} else if (ds_grid_get(map_er, j+1, i-1)) == "desert" {
				if (irandom(100) < 20) ds_grid_set(map_er, j, i, "desert");
			} else if (ds_grid_get(map_er, j+1, i+1)) == "desert" {
				if (irandom(100) < 20) ds_grid_set(map_er, j, i, "desert");
			} else if (ds_grid_get(map_er, j-1, i+1)) == "desert" {
				if (irandom(100) < 20) ds_grid_set(map_er, j, i, "desert");
			}
		}
	}
}

for (i = 0; i < ds_grid_height(map_er) - 1; i++) {
	for (j = 0; j < ds_grid_height(map_er) - 1; j++) {
		if (ds_grid_get(map_er, j, i) == "ground") {
			if (ds_grid_get(map_er, j, i-1)) != "ground" && (ds_grid_get(map_er, j, i-1)) != "edge" {
				if (irandom(100) < 50) ds_grid_set(map_er, j, i, "edge");
			} else if (ds_grid_get(map_er, j+1, i)) != "ground" && (ds_grid_get(map_er, j+1, i)) != "edge" {
				if (irandom(100) < 50) ds_grid_set(map_er, j, i, "edge");
			} else if (ds_grid_get(map_er, j, i+1)) != "ground" && (ds_grid_get(map_er, j, i+1)) != "edge" {
				if (irandom(100) < 50) ds_grid_set(map_er, j, i, "edge");
			} else if (ds_grid_get(map_er, j-1, i)) != "ground" && (ds_grid_get(map_er, j-1, i)) != "edge" {
				if (irandom(100) < 50) ds_grid_set(map_er, j, i, "edge");
			}
		}
	}
}


generation_state = generation.erosion;