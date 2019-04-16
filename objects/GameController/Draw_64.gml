draw_set_font(fontPixellari);
if (MapGenerator.generation_state == generation.nothing) {
	draw_text(25, 25, "press R to get another island");
	draw_set_color(c_black);
	draw_text((room_width/2)-45, room_height-45, string(MapGenerator.world_name_a)+string(MapGenerator.world_name_b)+string(MapGenerator.world_name_c));
	draw_set_color(c_white);
} else {
	draw_text(25, 25, "Generating....");	
}
