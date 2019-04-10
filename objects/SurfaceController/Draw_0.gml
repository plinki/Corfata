if (surface_exists(map_surface)) {
	draw_surface(map_surface, 0, 0);	
} else {
	map_surface = surface_create(room_width, room_height);
}