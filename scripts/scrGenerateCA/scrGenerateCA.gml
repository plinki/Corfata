/*This script will go over every cell and check how many of its 8
neighbours are a water cell. If there are more than 4 water cells 
(including the cell itself) adjacent to the cell being checked, the cell
will become water.*/
show_debug_message("scrGenerateCA running "+string(times)+" times");
if (MapGenerator.times >= 1000) show_message("this will take a few minutes");

repeat(times) {
	for (i = 0; i < ds_grid_height(map_base); i++) {
		for (j = 0; j < ds_grid_width(map_base); j++) {
			water_neighbors = scrFindCANeighbors(j, i, map_base);
	
			if (water_neighbors > 4) { 
				ds_grid_set(map_base, j, i, "water"); 
			}
			else if (water_neighbors < 4) { 
				ds_grid_set(map_base, j, i, "ground"); 
			}
			else if (water_neighbors == 4) 
			{ 
				//pass
			}
		}
	}
	times--;
}

//generation_state = generation.ca;
generation_state = generation.gen_erosion;