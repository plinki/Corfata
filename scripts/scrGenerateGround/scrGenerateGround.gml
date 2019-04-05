/*This will iterate over both of the grid's axis
and will assign a string to the current cell being 
iterated over with a 65% chance*/
show_debug_message("scrGenerateGround");
for (i = border; i < ds_grid_height(map_base) - border; i++) {
	for (j = border; j < ds_grid_width(map_base) - border; j++) {
		randomize();
		if (irandom(100) > 35) {
			ds_grid_set(map_base, j, i, "ground");
		}
	}
}

generation_state = generation.gen_ca;