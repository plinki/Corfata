var lay_id = layer_get_id("World");
var map_id = layer_tilemap_get_id(lay_id);



if (ds_exists(map_er, ds_type_grid)) {
	for (i = 0; i < ds_grid_height(map_er) - 1; i++) {
		for (j = 0; j < ds_grid_width(map_er) - 1; j++) {
			if (ds_grid_get(map_er, j, i) == "ground") {
				tilemap_set(map_id,18,j, i)
			}
			if (ds_grid_get(map_er, j, i) == "forest") {
				tilemap_set(map_id,10,j, i)
			}
			if (ds_grid_get(map_er, j, i) == "desert") {
				tilemap_set(map_id,14,j, i)
			}
			if (ds_grid_get(map_er, j, i) == "mountain") {
				tilemap_set(map_id,6,j, i)
			}
			if (ds_grid_get(map_er, j, i) == "mountainslope") {
				tilemap_set(map_id,8,j, i)
			}
			if (ds_grid_get(map_er, j, i) == "forestedge") {
				tilemap_set(map_id,12,j, i)
			}
			if (ds_grid_get(map_er, j, i) == "edge") {
				tilemap_set(map_id,16,j, i)
			}
			if (ds_grid_get(map_er, j, i) == "water") || (ds_grid_get(map_er, j, i) == "ocean")  {
				tilemap_set(map_id,2,j, i)
			}
		}
	}
}

generation_state = generation.nothing;

