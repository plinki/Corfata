//Fill the first grid with water tiles
show_debug_message("scrGenerateBase");
map_base = ds_grid_set_region(map_base, 0, 0, 30, 30, "water");

generation_state = generation.ground;
