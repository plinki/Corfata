if (ds_exists(map_er, ds_type_grid)) {
	ds_grid_set_region(map_er, 0, 0, 300, 300, "water");
	
for (i = border; i < ds_grid_height(map_base) - border; i++) {
	for (j = border; j < ds_grid_width(map_base) - border; j++) {
		if (ds_grid_get(map_base, j, i) == "ground") {
			ds_grid_set_disk(map_er, j * 10, i * 10, 13, "ground");
			}
		}
	}
}

for (i = border; i < ds_grid_height(map_er) - border; i++) {
	for (j = border; j < ds_grid_width(map_er) - border; j++) {
		if (ds_grid_get(map_er, j, i)) == "ground" {
			randomize();
			if (irandom(100) > 30) {
				ds_grid_set(map_er, j, i, "ground");
			} else {
				ds_grid_set(map_er, j, i, "water");	
			}
		}
	}
}

for (i = 0; i < ds_grid_height(map_er); i++) {
	for (j = 0; j < ds_grid_width(map_er); j++) {
		water_neighbors = scrFindCANeighbors(j, i, map_er);
	
		if (water_neighbors > 4) { 
			ds_grid_set(map_er, j, i, "water"); 
		}
		else if (water_neighbors < 4) { 
			ds_grid_set(map_er, j, i, "ground"); 
		}
		else if (water_neighbors == 4) 
		{ 
			//pass
		}
	}
}

for (i = border; i < ds_grid_height(map_er) - border; i++) {
	for (j = border; j < ds_grid_width(map_er) - border; j++) {
		if (ds_grid_get(map_er, j, i)) == "ground" {
			randomize();
			if (irandom(100) > 25) {
				ds_grid_set(map_er, j, i, "ground");
			} else {
				ds_grid_set(map_er, j, i, "water");	
			}
		}
	}
}

for (i = ds_grid_height(map_er); i > 0; i--) {
	for (j = ds_grid_width(map_er); j > 0; j--) {
		water_neighbors = scrFindCANeighbors(j, i, map_er);
	
		if (water_neighbors > 4) { 
			ds_grid_set(map_er, j, i, "water"); 
		}
		else if (water_neighbors < 4) { 
			ds_grid_set(map_er, j, i, "ground"); 
		}
		else if (water_neighbors == 4) 
		{ 
			//pass
		}
	}
}

scrFloodFill(0, 0, "ocean", "water");

for (i = 0; i < ds_grid_height(map_er); i++) {
	for (j = 0; j < ds_grid_width(map_er); j++) {
		if (ds_grid_get(map_er, j, i) == "water") {
			ds_grid_set(map_er, j, i, "ground");			
		}
	}
}

generation_state = generation.rivers;