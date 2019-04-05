if (keyboard_check_pressed(ord("R"))) {
	instance_destroy(MapGenerator);
	randomize();
	instance_create_depth(0, 0, 10, MapGenerator);
}