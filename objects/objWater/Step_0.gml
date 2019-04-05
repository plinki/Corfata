if keyboard_check_released(ord("R")) && !instance_exists(MapGenerator) 
	game_restart(); 

if keyboard_check_released(vk_space)
	show_debug_message(instance_exists(MapGenerator))
