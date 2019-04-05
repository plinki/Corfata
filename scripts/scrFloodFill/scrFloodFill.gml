//Should probably change this to a stack based implementation
var i, j, new_tile, prev_tile;

i = argument0;
j = argument1;
new_tile = argument2;
prev_tile = argument3;


if (i < 0 || i >= ds_grid_width(map_er) || j < 0 || j >= ds_grid_height(map_er)) || (ds_grid_get(map_er, i, j) != prev_tile) {
    return 0;
}


ds_grid_set(map_er, i, j, new_tile);

scrFloodFill(i - 1, j, new_tile, prev_tile);
scrFloodFill(i + 1, j, new_tile, prev_tile); 
scrFloodFill(i, j - 1, new_tile, prev_tile); 
scrFloodFill(i, j + 1, new_tile, prev_tile); 