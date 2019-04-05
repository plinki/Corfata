draw_set_font(fontPixellari);
if (MapGenerator.generation_state = generation.erosion) {
	draw_text(25, 25, "press R to get another island");
} else {
	draw_text(25, 25, "Generating....");	
}
draw_set_color(c_black);
draw_text((room_width/2)-45, room_height-45, string(MapGenerator.world_name_a)+string(MapGenerator.world_name_b));
draw_set_color(c_white);