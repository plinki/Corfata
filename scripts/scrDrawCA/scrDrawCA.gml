if (ds_exists(map_base, ds_type_grid)) {
	for (i = ds_grid_height(map_base) - 1; i > 0; i--) {
		for (j = 0; j < ds_grid_width(map_base) - 1; j++) {
			switch (ds_grid_get(map_base, j, i)) {
				case "water": 
				draw_set_color(make_color_rgb(0, 174, 240));
				draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
				(j *tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
				draw_set_color(c_white);
				break;
			
				case "ground":
				draw_set_color(make_color_rgb(0, 119, 50));
				draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
				(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
				draw_set_color(c_white);
				break;
			}
		}
	}
}

generation_state = generation.gen_erosion;