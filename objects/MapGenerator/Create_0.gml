//This enum divides generation stages
enum generation {
	base,
	ground,
	gen_ca,
	ca,
	gen_erosion,
	rivers,
	mountains,
	forests,
	deserts,
	beaches,
	erosion,
	nothing
}

tile_size = sprite_get_width(sprWater);

//30x30 grid for the blocky island base
map_base = ds_grid_create(30, 30);

/*The next two lines contain a magic number. This used to center the generated map but after 
moving from 30x30 to 300x300 it no longer does so, thus magic numer. Needs to resolved*/
starting_point_x = room_width / 2 - (ds_grid_width(map_base) - 1) * (tile_size / 2);   
starting_point_y = room_height / 2 - (ds_grid_height(map_base) - 1) * (tile_size / 2);
border = 2;

//300x300 grid for the second, pixel map
map_er = ds_grid_create(300, 300);

/*generation.base is the first stage, assigning this constant
to generation_base will end up cascading all the way down to 
the last generation stage, the idea is to have these stages done
one by one so the procedural generation process is visualized*/
generation_state = generation.base;

//temporary debug variable
times = 2;

/*world name generator - picks a random array item, capitalizes 
first variable's string first character that comprises name*/
randomize();


world_name_template = array("willes", "ren", "una", "hael", "sles", "ashal",
							"thalas", "rya", "kadi", "nore", "rius", "myth",
							"esfe", "ilen", "lore", "magic", "chan", "coin",
							"amy", "shait", "weva", "yefe", "eny", "rafe");


world_name_a = world_name_template[ irandom_range(0, array_length_1d(world_name_template)-1) ];
first_char = string_char_at(world_name_a, 1);
capitalized_char = string_upper(first_char);
world_name_a = string_delete(world_name_a, 1, 1);
world_name_a = string_insert(capitalized_char, world_name_a, 1);
world_name_b = world_name_template[ irandom_range(0, array_length_1d(world_name_template)-1) ];