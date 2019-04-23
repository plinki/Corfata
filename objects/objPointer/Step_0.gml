if WorldMapPlayer.in_castle == false
	instance_destroy(id)
	
image_xscale = camera_get_view_width(view_camera[0])/450;
image_yscale = camera_get_view_height(view_camera[0])/450;

x = start_x + (start_width - sprite_width)/2;
y = start_y + (start_height - sprite_height);




