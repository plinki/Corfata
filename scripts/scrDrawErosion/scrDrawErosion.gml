tile_size = sprite_get_width(sprWater) / 10;
//show_debug_message(ds_grid_height(map_er));


if (ds_exists(map_er, ds_type_grid)) {
	for (i = 0; i < ds_grid_height(map_er); i++) {
		for (j = 0; j < ds_grid_width(map_er); j++) {
			if (i < ds_grid_height(map_er) && j < ds_grid_width(map_er) && j > 0 && i > 0) {
				if (surface_exists(SurfaceController.map_surface)) {
					if (ds_grid_get(map_er, j, i) == "ground") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(0, 119, 50));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					} if (ds_grid_get(map_er, j, i) == "water") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(0, 174, 240));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					} if (ds_grid_get(map_er, j, i) == "ocean") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(0, 174, 240));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					} if (ds_grid_get(map_er, j, i) == "mountain") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(58, 54, 52));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					} if (ds_grid_get(map_er, j, i) == "mountainslope") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(40, 38, 36));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					} if (ds_grid_get(map_er, j, i) == "forest") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(0, 69, 28));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					} if (ds_grid_get(map_er, j, i) == "forestedge") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(0, 55, 11));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					} if (ds_grid_get(map_er, j, i) == "desert") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(90, 68, 53));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					} if (ds_grid_get(map_er, j, i) == "edge") {
						surface_set_target(SurfaceController.map_surface);
						draw_set_color(make_color_rgb(76, 86, 48));
						draw_rectangle(tile_size * j + starting_point_x, tile_size * i + starting_point_y,
						(j*tile_size) + tile_size + starting_point_x, (i*tile_size) + tile_size + starting_point_y, false);
						draw_set_color(c_white);
						surface_reset_target();
						continue;
					}
				} else { SurfaceController.map_surface = surface_create(room_width, room_height) surface_set_target(SurfaceController.map_surface) };
			}
		}
	}
}


generation_state = generation.nothing;