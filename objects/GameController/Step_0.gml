if (keyboard_check_pressed(ord("R"))) {
	surface_set_target(SurfaceController.map_surface);
	draw_clear_alpha(c_white, 0);
	surface_reset_target();
	instance_destroy(MapGenerator);
	instance_destroy(SurfaceController);
	randomize();
	instance_create_depth(0, 0, 10, MapGenerator);
}