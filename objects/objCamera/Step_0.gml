if (mouse_check_button(mb_left)) {
	var mx, my; // Temporary _mouse_x, _mouse_y variables
 
	// X/Y offset is the distance the surface is from 0,0
	mx = (mouse_x - x_offset) / (surface_get_width(SurfaceController.map_surface) * zoom);
	my = (mouse_y - y_offset) / (surface_get_height(SurfaceController.map_surface) * zoom);
 
	// Update zoom here to allow the old distance ration to be calculated above.  Allows zooming to center on the cursor propperly
	zoom += 0.1;
 
	// Multiply surface width/height by zoom to get the viewable size, or view width/height of the surface.
	x_offset = mouse_x - (surface_get_width(SurfaceController.map_surface) * zoom) * mx;
	y_offset = mouse_y - (surface_get_height(SurfaceController.map_surface) * zoom) * my;
}
